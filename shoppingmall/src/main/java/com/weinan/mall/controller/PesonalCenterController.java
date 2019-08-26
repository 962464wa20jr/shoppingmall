package com.weinan.mall.controller;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.weinan.mall.service.OrderGoodsService;

@Controller
public class PesonalCenterController {
	
	@Resource
	private OrderGoodsService orderGoodsService;
	
	@RequestMapping(value="/personal/{userId}",method=RequestMethod.GET)
	public String checkOrders(@PathVariable BigInteger userId,HttpSession session) {
		List<Map<String,Object>> orderList=orderGoodsService.showOrdersStatus(userId);
		session.setAttribute("orderList", orderList);
		return "personal";
	}

}
