package com.weinan.mall.service;

import java.math.BigInteger;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.weinan.mall.entities.Goods;
import com.weinan.mall.entities.ShoppingCart;
import com.weinan.mall.mapping.ShoppingCartDAO;

@Service("shoppingcartService")
public class ShoppingcartService {
	@Resource
    private ShoppingCartDAO shoppingcartDao;
	
	
	public List<Goods> getGoodsByUserId(BigInteger user_id){
		return shoppingcartDao.getGoodsByUserId(user_id);
	}
	
	@Transactional
	public int add(ShoppingCart entity) {
		return shoppingcartDao.add(entity);
	}
	
	@Transactional
	public int delete(BigInteger user_id,BigInteger goods_id) {
		return shoppingcartDao.delete(user_id, goods_id);
	}
	
	@Transactional
	public int update(ShoppingCart entity) {
		return shoppingcartDao.update(entity);
	}
	
	public int getAmountByUserId(BigInteger user_id) {
		return shoppingcartDao.getAmountByUserId(user_id);
	}
	
	public int isUserIn(BigInteger user_id) {
		return shoppingcartDao.isUserIn(user_id);
	}
	
	public int getAmountByUserIdAndGoodsId(BigInteger user_id,BigInteger goods_id) {
	    return shoppingcartDao.getAmountByUserIdAndGoodsId(user_id, goods_id);
	}
}
