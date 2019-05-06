package popbl6.eds.dao;

import java.util.List;

import popbl6.eds.model.Usuario;

public interface UserDao {

	Usuario findByUserName(String userName);
    
    void save(Usuario user);
    
    public List<Usuario> getListUsers();
}
