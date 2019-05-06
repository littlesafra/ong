package popbl6.eds.service;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetailsService;

import popbl6.eds.model.Usuario;
import popbl6.eds.user.CrmUser;

public interface UserService extends UserDetailsService {


    void save(CrmUser crmUser);
    
    
    List<Usuario> getListUsers();
    
    Usuario findByUserName(String userName);

}
