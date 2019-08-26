package com.weinan.mall.service;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.weinan.mall.mapping.OrderGoodsDAO;
import com.weinan.mall.entities.Goods;
import com.weinan.mall.entities.OrderGoods;

@Service
public class OrderGoodsService {

	@Resource
	private OrderGoodsDAO orderGoodsDao;
	
	public List<Goods> getGoodsByOrderId(BigInteger orders_id){
		return orderGoodsDao.getGoodsByOrderId(orders_id);
	}
	
	@Transactional
	public int add(OrderGoods entity) {
		return orderGoodsDao.add(entity);
	}
	
	@Transactional
	public int delete(BigInteger id) {
		return orderGoodsDao.delete(id);
	}
	
	@Transactional
	public int delete(String[] ids) {
		int rows=0;
		for(String i:ids) {
			BigInteger id=new BigInteger(i);
			rows+=orderGoodsDao.delete(id);
		}
		return rows;
	}
	public List<Map<String,Object>> showOrdersStatus(BigInteger userId){
		return orderGoodsDao.showOrdersStatus(userId);
	}
	
}
