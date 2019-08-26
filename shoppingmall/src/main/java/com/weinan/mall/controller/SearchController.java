package com.weinan.mall.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.weinan.mall.entities.Goods;
import com.weinan.mall.mapping.CategoryDAO;
import com.weinan.mall.mapping.GoodsDAO;

@Controller
@RequestMapping("/search")
public class SearchController {
	
	@Resource
	private GoodsDAO goodsDao;
	
	@Resource
	private CategoryDAO categoryDao;
	
	@RequestMapping(value="/searchGoods",method=RequestMethod.POST)
	@ResponseBody
	public List<Goods> searchGoods(@RequestBody Map<String,String>keyMap,HttpSession session) {
		String keyword=keyMap.get("keyword");
		List<Goods> foundGoodsList=new ArrayList<>();
		if(categoryDao.findIdByCatagoryName(keyword)!=null) {
			foundGoodsList=goodsDao.findAllByCategoryId(categoryDao.findIdByCatagoryName(keyword));
		}else {
			foundGoodsList=goodsDao.findByKeyWord(keyword);
		}
		session.setAttribute("foudGoodsList", foundGoodsList);
		return foundGoodsList;
	}
	
	@RequestMapping("/found")
	public String found() {
		return "commodity";
	}

}
