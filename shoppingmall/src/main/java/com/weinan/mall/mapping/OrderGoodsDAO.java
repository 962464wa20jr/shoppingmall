package com.weinan.mall.mapping;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.weinan.mall.entities.Goods;
import com.weinan.mall.entities.OrderGoods;


public interface OrderGoodsDAO {
	
	List<Goods> getGoodsByOrderId(BigInteger orders_id);
	
	int add(OrderGoods entity);
	
	int delete(BigInteger id);
	
    List<Map<String,Object>> showOrdersStatus(BigInteger userId);

}
