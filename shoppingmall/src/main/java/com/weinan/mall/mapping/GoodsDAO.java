package com.weinan.mall.mapping;

import java.math.BigInteger;
import java.util.List;

import com.weinan.mall.entities.Goods;

public interface GoodsDAO {
	List<Goods> findAllByCategoryId(BigInteger category_id);
	
	Goods findById(BigInteger id);
	
	Goods findByImageUrl(String image);
	
	int add(Goods entity);
	
	int delete(BigInteger id);
	
	int update(Goods entity);
	
	List<Goods> findByKeyWord(String keyword);

}
