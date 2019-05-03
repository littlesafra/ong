package popbl6.eds.dao;
/** @file UserDaoImpl.java
* @brief Implementation of UserDao interface methods
* @authors
* Name  | Surname    | Email                                 |
* ------|--------    | -----------------                     | ---------------------------------------------------|
* Aitor | Pi�eiro    | aitor.pineiro@alumni.mondragon.edu    |
* Ander | Rekalde    | ander.recalde@alumni.mondragon.edu    |
* Ander | Rementeria | ander.rementeria@alumni.mondragon.edu |
* Anton | Alberdi    | anton.alberdi@alumni.mondragon.edu    |
* @date 03/01/2019
*/
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import popbl6.eds.model.User;


@Repository
public class UserDaoImpl implements UserDao {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	/**A method that queries to the database trying to find
	* a User according to its username
	*@param String theUserName
	*@return User
	*/
	@Override
	public User findByUserName(String theUserName) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// now retrieve/read from database using username
		Query<User> theQuery = currentSession.createQuery("from User where userName=:uName", User.class);
		theQuery.setParameter("uName", theUserName);
		User theUser = null;
		try {
			theUser = theQuery.getSingleResult();
		} catch (Exception e) {
			theUser = null;
		}

		return theUser;
	}

	/**A method that queries to the database trying to save a user
	*@param User theUser
	*@return Void method
	*/
	@Override
	public void save(User theUser) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theUser);
	}

	/**A method that queries to the database trying get a list of users
	*@param No parameter
	*@return List<User>
	*/
	@Override
	public List<User> getListUsers() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<User> theQuery = currentSession.createQuery("from User", User.class);
		List<User> users = theQuery.getResultList();
					
		return users;
	}
}
