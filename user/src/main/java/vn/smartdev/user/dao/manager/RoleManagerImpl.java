package vn.smartdev.user.dao.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import vn.smartdev.user.dao.entity.Role;
import vn.smartdev.user.dao.repository.RoleRepository;

import javax.management.relation.RoleNotFoundException;
import java.util.List;

@Service
public class RoleManagerImpl implements RoleManager {


    @Autowired
    private  RoleRepository roleRepository;

    @Override
    public List<Role> getAll() throws RoleNotFoundException {
        return roleRepository.findAll();
    }

    @Override
    public Role findRoleByName(String roleName) throws RoleNotFoundException {
        return roleRepository.findOne(roleName);
    }
}
