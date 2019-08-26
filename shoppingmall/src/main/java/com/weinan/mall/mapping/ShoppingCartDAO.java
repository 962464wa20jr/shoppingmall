package com.weinan.mall.mapping;

import java.math.BigInteger;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.weinan.mall.entities.Goods;
import com.weinan.mall.entities.ShoppingCart;

public interface ShoppingCartDAO {
	
	ShoppingCart getByUserIdAndGoodsId(@Param("user_id")BigInteger user_id,@Param("goods_id")BigInteger goods_id);

	List<Goods> getGoodsByUserId(BigInteger user_id);
	
	int add(ShoppingCart entity);
	
	int delete(@Param("user_id")BigInteger user_id,@Param("goods_id")BigInteger goods_id);
	
	int update(ShoppingCart entity);
	
	//购物车商品种类数量
	int getAmountByUserId(BigInteger user_id);
	
	int isUserIn(BigInteger user_id);
	
	//购物车里买的这件商品的数量
	int getAmountByUserIdAndGoodsId(@Param("user_id")BigInteger user_id,@Param("goods_id")BigInteger goods_id);

}
