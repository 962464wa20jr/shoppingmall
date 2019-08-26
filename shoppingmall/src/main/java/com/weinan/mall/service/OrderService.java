package com.weinan.mall.service;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.weinan.mall.mapping.OrderDAO;
import com.weinan.mall.entities.Order;

@Service
public class OrderService {

	@Resource
	private OrderDAO orderDao;
	
	public List<Order> findAllOrderByUserId(BigInteger user_id){
		return orderDao.findAllByUserId(user_id);
	}
	
	public Order findById(BigInteger id) {
		return orderDao.findById(id);
	}
	
	@Transactional
	public int add(Order entity) {
		return orderDao.add(entity);
	}
	
	@Transactional
	public int delete(BigInteger id) {
		return orderDao.delete(id);
	}
	
	@Transactional
	public int update(Order entity) {
		return orderDao.update(entity);
	}
	
	@Transactional
	public int delete(String[] ids) {
		int rows=0;
		for(String i:ids) {
			BigInteger id=new BigInteger(i);
			rows+=orderDao.delete(id);
		}
		return rows;
	}
	
	public Order findLatestOne() {
		return orderDao.findLatestOne();
	}
	
	public Map<String,Object> queryOrderDetails(BigInteger order_id){
		return orderDao.queryOrderDetails(order_id);
	}
}
