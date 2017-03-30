package vn.smartdev.user.dao.manager;
import vn.smartdev.user.dao.entity.Role;
import vn.smartdev.user.exception.UserNotFoundException;

import javax.management.relation.RoleNotFoundException;
import java.util.List;

public interface RoleManager {
    List<Role> getAll() throws RoleNotFoundException;
    Role findRoleByName(String roleName) throws RoleNotFoundException;
}