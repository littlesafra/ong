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
import popbl6.eds.model.Usuario;


@Repository
public class UserDaoImpl implements UserDao {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	

	@Override
	public void save(Usuario theUser) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theUser);
	}

	
	@Override
	public List<Usuario> getListUsers() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Usuario> theQuery = currentSession.createQuery("from Usuario", Usuario.class);
		List<Usuario> users = theQuery.getResultList();
					
		return users;
	}


	@Override
	public Usuario findByUserName(String userName) {
		Session currentSession = sessionFactory.getCurrentSession();

		// now retrieve/read from database using username
		Query<Usuario> theQuery = currentSession.createQuery("from User where userName=:uName", Usuario.class);
		theQuery.setParameter("uName", userName);
		Usuario theUser = null;
		try {
			theUser = theQuery.getSingleResult();
		} catch (Exception e) {
			theUser = null;
		}

		return theUser;
	}
}
