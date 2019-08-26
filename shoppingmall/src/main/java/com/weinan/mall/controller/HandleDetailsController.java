package com.weinan.mall.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.weinan.mall.entities.Goods;
import com.weinan.mall.service.GoodsService;

@Controller
public class HandleDetailsController {
	
	@Resource
	private GoodsService goodsService;
	
	private Goods good;

	@ResponseBody
	@RequestMapping(value="/loadGoods",method=RequestMethod.POST)
	public Goods loadGoods(@RequestBody Map<String,String> maps) {
		System.out.println("这里");
		String url=maps.get("url");
		 good=goodsService.findByImageUrl(url);
		return good; 
	}
	

	@RequestMapping(value="/details")
	public String details(Model model) {
		model.addAttribute("goods", good);
		return "details";
	}
}
