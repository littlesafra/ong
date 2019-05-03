package popbl6.eds.dao;

import java.util.List;

import popbl6.eds.model.User;

public interface UserDao {

    User findByUserName(String userName);
    
    void save(User user);
    
    public List<User> getListUsers();
}
