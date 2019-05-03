package popbl6.eds.service;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetailsService;

import popbl6.eds.model.User;
import popbl6.eds.user.CrmUser;

public interface UserService extends UserDetailsService {

    User findByUserName(String userName);

    void save(CrmUser crmUser);
    
    void saveAdmin(CrmUser crmUser);
    
    List<User> getListUsers();
    
    User loginUser();
}
