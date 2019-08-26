package com.weinan.mall.mapping;

import java.math.BigInteger;
import java.util.List;

import com.weinan.mall.entities.User;

public interface UserDAO {
	
	List<User> findAllUsers();
	
	User findUserById(BigInteger id);
	
	User findUserByUsernameAndPassword(User user);
	
	int add(User entity);
	
	int delete(BigInteger id);
	
	int update(User entity);

}
