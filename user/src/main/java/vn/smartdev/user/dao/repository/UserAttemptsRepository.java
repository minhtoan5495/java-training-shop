package vn.smartdev.user.dao.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import vn.smartdev.user.dao.entity.UserAttempt;

public interface UserAttemptsRepository extends JpaRepository<UserAttempt,String>{
	
	UserAttempt findByUsername(String name);
	
	@Modifying
	@Transactional
	@Query("UPDATE UserAttempt u SET u.attempts = u.attempts + 1 WHERE u.username = :username ")
	void updateAttempts(@Param("username") String name);
	
	@Modifying
	@Transactional
	@Query("DELETE from UserAttempt u where u.username = :username ")
	void resetAttempts(@Param("username") String name);
	
	@Query("SELECT count(u) FROM UserAttempt u WHERE u.username = :username ")
	long countAttempts(@Param("username") String name);
	
}
