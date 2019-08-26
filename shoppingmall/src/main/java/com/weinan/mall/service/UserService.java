package com.weinan.mall.service;

import java.math.BigInteger;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.weinan.mall.mapping.UserDAO;
import com.weinan.mall.entities.User;

@Service
public class UserService {

	@Resource
	private UserDAO userDao;
	
	public List<User> getAllUsers(){
		return userDao.findAllUsers();
	}
	
	public User findUserById(BigInteger id) {
		return userDao.findUserById(id);
	}
	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public User findUserByUsernameAndPassword(User user) {
		return userDao.findUserByUsernameAndPassword(user);
	}
	
	@Transactional
	public int add(User entity) {
		return userDao.add(entity);
	}
	
	@Transactional
	public int delete(BigInteger id) {
		return userDao.delete(id);
	}
	
	@Transactional
	public int update(User entity) {
		return userDao.update(entity);
	}
	@Transactional
	public int delete(String[] ids) {
		int rows=0;
		for(String i:ids) {
		  BigInteger id=new BigInteger(i);
		  rows+=userDao.delete(id);
		}
		return rows;
	}
}
