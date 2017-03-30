package vn.smartdev.user.services;

import vn.smartdev.user.dao.entity.Role;

import java.util.List;

public interface RoleService {

    List<Role> getAllRoleService();
    Role findRoleByName(String rolename);
}
