package com.weinan.mall.controller;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.weinan.mall.entities.Goods;
import com.weinan.mall.entities.Order;
import com.weinan.mall.entities.OrderGoods;
import com.weinan.mall.service.OrderGoodsService;
import com.weinan.mall.service.OrderService;
import com.weinan.mall.service.ShoppingcartService;

@Controller
@RequestMapping("/order")
public class IncreaseOrderController {

	@Resource
	private OrderService orderService;
	
	@Resource
	private OrderGoodsService orderGoodsService;
	
	@Resource
	private ShoppingcartService shoppingcartService;
	
	
	@RequestMapping(value="/addOrder",method=RequestMethod.POST)
	@ResponseBody
	public boolean addOrder(@RequestBody Map<String,String> maps,HttpSession session) {
		System.out.println("开始下单");
		String receiverName=maps.get("receiver_name");
		String address=maps.get("address");
		String phone=maps.get("phoneNumber");
		BigInteger userId=new BigInteger(maps.get("user_id"));
		Order order=new Order(receiverName,address,phone,userId);
		if(orderService.add(order)!=1) {
			return false;
		}
		@SuppressWarnings("unchecked")
		Map<Goods,Integer> userGoodsList=(Map<Goods, Integer>) session.getAttribute("clearGoodList");
		BigInteger orderId=orderService.findLatestOne().getId();
		for(Goods g:userGoodsList.keySet()) {
			BigDecimal sum=g.getPrice().multiply(BigDecimal.valueOf((int)userGoodsList.get(g)));
			OrderGoods orderGoods=new OrderGoods(g.getId(),orderId,userGoodsList.get(g),sum);
			
			if(orderGoodsService.add(orderGoods)!=1) {
				return false;
			}
			shoppingcartService.delete(userId, g.getId());
			if(shoppingcartService.isUserIn(userId)==0) {
				session.setAttribute("cartCount",0);
			}else {
				session.setAttribute("cartCount", shoppingcartService.getAmountByUserId(userId));
			}
			
		}
	    
		return true;
	}
	
	@RequestMapping("/pay")
	public String payPage(HttpSession session) {
		Map<String,Object> orderDetailsMap=new HashMap<>();
		BigInteger orderId=orderService.findLatestOne().getId();
		orderDetailsMap=orderService.queryOrderDetails(orderId);
		session.setAttribute("s_payment",orderDetailsMap.get("sumAmount"));
		session.setAttribute("s_orderId", orderDetailsMap.get("id"));
		session.setAttribute("s_receiverName", orderDetailsMap.get("receiver_name"));
		session.setAttribute("s_address", orderDetailsMap.get("address"));
		session.setAttribute("s_phoneNumber", orderDetailsMap.get("phoneNumber"));
		return "payment";
	}
	
	@RequestMapping("/receive")
	public String receive() {
		return "success";
	}
}
