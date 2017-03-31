package vn.smartdev.user.dao.entity;

import org.springframework.context.annotation.ComponentScan;
import vn.smartdev.core.jpa.auditing.AbstractAuditableEntity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;
import java.util.UUID;

@Entity
@ComponentScan("vn.smartdev.user.dao.entity")
@Table(name = "role")
@NamedQuery(name="Role.findAll", query="SELECT r FROM Role r")
public class Role extends AbstractAuditableEntity implements Serializable {
	private static final long serialVersionUID = -3689385809431359190L;

	@Id
	@Column(name = "role_id")
	private String id;

	@Column(name="role_name")
	private String roleName;

	public Role(String roleName) {
		this.roleName = roleName;
	}

	//bi-directional many-to-many association to User
	@ManyToMany(mappedBy = "roles",fetch = FetchType.EAGER, targetEntity = User.class)
	private List<User> users;

	public Role() {
		setId(UUID.randomUUID().toString());
	}

	public String getRoleName() {
		return this.roleName;
	}

    public void setRoleName(String roleName) {
		this.roleName = roleName;
	}


	public List<User> getUsers() {
		return this.users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}