package popbl6.eds.service;


import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import popbl6.eds.dao.RoleDao;
import popbl6.eds.dao.UserDao;
import popbl6.eds.model.Role;
import popbl6.eds.model.User;
import popbl6.eds.user.CrmUser;

@Service
public class UserServiceImpl implements UserService {

	// need to inject user dao
	@Autowired
	private UserDao userDao;

	@Autowired
	private RoleDao roleDao;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Override
	@Transactional
	public void saveAdmin(CrmUser crmUser) {
		User user = new User();
		 // assign user details to the user object
		user.setUserName(crmUser.getUserName());
		user.setPassword(passwordEncoder.encode(crmUser.getPassword()));
		user.setFirstName(crmUser.getFirstName());
		user.setLastName(crmUser.getLastName());
		user.setEmail(crmUser.getEmail());

		// give user default role of "employee"

		user.setRoles(Arrays.asList(roleDao.findRoleByName("ROLE_ADMIN")));

		 // save user in the database
		userDao.save(user);
	}
	
	@Override
	@Transactional
	public List<User> getListUsers() {
		return userDao.getListUsers();
	}

	/**Make UserDao execute findByUserName(userName) method to
	*check whether the user already exists
	*@param String userName
	*@return User
	*/
	@Override
	@Transactional
	public User findByUserName(String userName) {
		// check the database if the user already exists
		return userDao.findByUserName(userName);
	}

	/**Make UserDao execute save(user) method to
	*store a user and its role
	*@param CrmUser crmUser
	*@return Void method
	*/
	@Override
	@Transactional
	public void save(CrmUser crmUser) {
		User user = new User();
		 // assign user details to the user object
		user.setUserName(crmUser.getUserName());
		user.setPassword(passwordEncoder.encode(crmUser.getPassword()));
		user.setFirstName(crmUser.getFirstName());
		user.setLastName(crmUser.getLastName());
		user.setEmail(crmUser.getEmail());

		// give user default role of "employee"
		user.setRoles(Arrays.asList(roleDao.findRoleByName("ROLE_EMPLOYEE")));

		 // save user in the database
		userDao.save(user);
	}

	/**Make UserDao execute loadUserByUsername(userName) method to
	*get a user and its role to use with springframework.security
	*@param CrmUser crmUser
	*@return UserDetails
	*/
	@Override
	@Transactional
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		User user = userDao.findByUserName(userName);
		if (user == null) {
			throw new UsernameNotFoundException("Invalid username or password.");
		}
		return new org.springframework.security.core.userdetails.User(user.getUserName(), user.getPassword(),
				mapRolesToAuthorities(user.getRoles()));
	}

	/**Map user roles to authorities
	*@param Collection<Role> roles
	*@return Collection<? extends GrantesAuthority>
	*/
	private Collection<? extends GrantedAuthority> mapRolesToAuthorities(Collection<Role> roles) {
		return roles.stream().map(role -> new SimpleGrantedAuthority(role.getName())).collect(Collectors.toList());
	}
	
	@Override
	@Transactional
	public User loginUser() throws UsernameNotFoundException{
		String currentUserName = "";
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
			currentUserName = authentication.getName();
		}
	
		return userDao.findByUserName(currentUserName);
	}
}

