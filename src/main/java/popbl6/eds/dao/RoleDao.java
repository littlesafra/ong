package popbl6.eds.dao;

import popbl6.eds.model.Role;

public interface RoleDao {
	public Role findRoleByName(String theRoleName);	
}
