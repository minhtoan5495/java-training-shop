package vn.smartdev.user.dao.entity;

import vn.smartdev.core.jpa.auditing.AbstractAuditableEntity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.UUID;


/**
 * The persistent class for the user database table.
 */
@Entity
@Table(name = "user")
@NamedQuery(name = "User.findAll", query = "SELECT u FROM User u")
public class User extends AbstractAuditableEntity<String> implements Serializable {
    private static final long serialVersionUID = -921467404840123028L;

    @Id
    @Column(name = "user_id")
    private String id;

    private String address;

    //@Temporal(TemporalType.DATE)
    private java.sql.Date birthday;


    private String email;

    private String password;

    private String phone;

    public User(String username) {
        this.username = username;
    }


    private String username;

    @Column(name = "account_non_locked")
    private boolean accountNonLocked;

    //bi-directional many-to-many association to Role
    @ManyToMany(fetch = FetchType.EAGER, targetEntity = Role.class)
    @JoinTable(
            name = "role_user"
            , joinColumns = {
            @JoinColumn(name = "username", referencedColumnName = "username")
    }

            , inverseJoinColumns = {
            @JoinColumn(name = "role_id", referencedColumnName = "id")
    }
    )
    private List<Role> roles;

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public User() {
        setId(UUID.randomUUID().toString());
    }

    public User(String address, Date birthday, String email, String password, String phone,
                String username) {
        this.address = address;
        this.birthday = (java.sql.Date) birthday;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.username = username;
        setId(UUID.randomUUID().toString());
    }

    public java.sql.Date getBirthday() {
        return birthday;
    }


    public void setBirthday(java.sql.Date birthday) {
        this.birthday = birthday;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public List<Role> getRoles() {
        return this.roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

    public void setAccountNonLocked(boolean accountNonLocked) {
        this.accountNonLocked = accountNonLocked;
    }

    public boolean isAccountNonLocked() {
        return accountNonLocked;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}