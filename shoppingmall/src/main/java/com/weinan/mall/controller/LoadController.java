package com.weinan.mall.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.weinan.mall.entities.Goods;
import com.weinan.mall.service.GoodsService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;



//@Controller
@RequestMapping("/")
public class LoadController {
	
	@Resource
	private GoodsService goodsService;
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String loadData(HttpServletRequest request,Model model) {
		File jsonFile=new File(request.getSession().getServletContext().getRealPath("/res/static/json/HotSell.json"));

		try {
			String json=FileUtils.readFileToString(jsonFile, "UTF-8");
			@SuppressWarnings({ "unchecked", "rawtypes" })
			List<Map> maps=JSONArray.fromObject(json);
			List<Goods> goodsList=new ArrayList<Goods>();
			for(Map m:maps) {
				Goods good=new Goods();
				good.setGoodsName((String) m.get("goods_name"));
				String price=(String)m.get("price");
				BigDecimal BPrice=new BigDecimal(price);
				good.setPrice(BPrice);
				good.setImage((String)m.get("image"));
				//System.out.println((String)m.get("image"));
				good.setDescription((String)m.get("description"));
				good.setIsHot(Integer.parseInt((String)m.get("isHot")));
				good.setIsPull(Integer.parseInt((String)m.get("isPull")));
				String categortId=(String)m.get("category_id");
				BigInteger BCategortId=new BigInteger(categortId);
				good.setCategoryId(BCategortId);
				goodsList.add(good);
			}
			model.addAttribute("goodsList", goodsList);
			/*for(Goods g:goodsList) {
				goodsService.add(g);
			}*/
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
		return "index";
	}
	

	
}
