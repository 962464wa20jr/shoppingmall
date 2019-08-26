package com.weinan.mall.service;

import java.math.BigInteger;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.weinan.mall.mapping.GoodsDAO;
import com.weinan.mall.entities.Goods;

@Service
public class GoodsService {

	
	@Resource
	private GoodsDAO goodsDao;
	
	public List<Goods> findALLGoodsByCategoryId(BigInteger category_id){
		return goodsDao.findAllByCategoryId(category_id);
	}
	
	public Goods findById(BigInteger id) {
		return goodsDao.findById(id);
	}
	
	public Goods findByImageUrl(String image) {
		return goodsDao.findByImageUrl(image);
	}
	
	@Transactional
	public int add(Goods entity) {
		return goodsDao.add(entity);
	}
	
	@Transactional
	public int delete(BigInteger id) {
		return goodsDao.delete(id);
	}
	
	@Transactional
	public int update(Goods entity) {
		return goodsDao.update(entity);
	}
	
	@Transactional
	public int delete(String[] ids) {
		int rows=0;
		for(String i:ids) {
			BigInteger id=new BigInteger(i);
			rows+=goodsDao.delete(id);
		}
		return rows;
	}
}

