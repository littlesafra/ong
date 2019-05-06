package popbl6.eds.dao;
/** @file RoleDaoImpl.java
* @brief Implementation of RoleDao interface methods
* @authors
* Name  | Surname    | Email                                 |
* ------|--------    | -----------------                     | ---------------------------------------------------|
* Aitor | Pi�eiro    | aitor.pineiro@alumni.mondragon.edu    |
* Ander | Rekalde    | ander.recalde@alumni.mondragon.edu    |
* Ander | Rementeria | ander.rementeria@alumni.mondragon.edu |
* Anton | Alberdi    | anton.alberdi@alumni.mondragon.edu    |
* @date 03/01/2019
*/
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import popbl6.eds.model.Role;


@Repository
public class RoleDaoImpl implements RoleDao {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	/**A method that queries to the database trying
	*  to get a Role according to a name
	*@param String theRoleName
	*@return Role
	*/
	@Override
	public Role findRoleByName(String theRoleName) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// now retrieve/read from database using name
		Query<Role> theQuery = currentSession.createQuery("from Role where name=:roleName", Role.class);
		theQuery.setParameter("roleName", theRoleName);
		
		Role theRole = null;
		
		try {
			theRole = theQuery.getSingleResult();
		} catch (Exception e) {
			theRole = null;
		}
		
		return theRole;
	}
}
