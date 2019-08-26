package com.weinan.mall.mapping;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import com.weinan.mall.entities.Order;

public interface OrderDAO {
	List<Order> findAllByUserId(BigInteger user_id);
	
	Order findById(BigInteger id);
	
	int add(Order entity);
	
	int update(Order entity);
	
	int delete(BigInteger id);
	
	Order findLatestOne();
	
	Map<String,Object> queryOrderDetails(BigInteger order_id);

}
