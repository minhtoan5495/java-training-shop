package vn.smartdev.user.userService;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import vn.smartdev.user.dao.entity.Role;
import vn.smartdev.user.dao.entity.User;
@SuppressWarnings({ "serial" })
public class Account implements UserDetails{
	
	User user;
	
	public Account(User user) {
		super();
		this.user = user;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		Set<GrantedAuthority> authorities = new HashSet<GrantedAuthority>();
	    for (Role r :user.getRoles()) {
	        authorities.add(new SimpleGrantedAuthority(r.getRoleName()));
	    }
	    return authorities;
	}
	
	@Override
	public String getPassword() {
		return user.getPassword();
	}

	@Override
	public String getUsername() {
		return user.getUsername();
	}

	@Override
	public boolean isAccountNonExpired() {
		return user.isAccountNonExpired();
	}

	@Override
	public boolean isAccountNonLocked() {
		return user.isAccountNonLocked();
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return user.isCredentialsNonExpired();
	}

	@Override
	public boolean isEnabled() {
		return user.isEnabled();
	}


	@Override
	public String toString() {
		return "Account [user=" + user + ", getAuthorities()= " + getAuthorities()
				+ ", getPassword()=" + getPassword() + ", getUsername()=" + getUsername() + ", isAccountNonExpired()="
				+ isAccountNonExpired() + ", isAccountNonLocked()=" + isAccountNonLocked()
				+ ", isCredentialsNonExpired()=" + isCredentialsNonExpired() + ", isEnabled()=" + isEnabled() + "]";
	}
}
