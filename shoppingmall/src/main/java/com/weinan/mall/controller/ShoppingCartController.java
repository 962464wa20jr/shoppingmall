package com.weinan.mall.controller;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.weinan.mall.entities.Goods;
import com.weinan.mall.entities.ShoppingCart;
import com.weinan.mall.service.GoodsService;
import com.weinan.mall.service.ShoppingcartService;

@Controller
@RequestMapping("/shoppingcart")
public class ShoppingCartController {
     @Resource
     private ShoppingcartService shoppingcartService;
     
     @Resource
     private GoodsService goodsService;
     
     @RequestMapping(value="/",method=RequestMethod.GET)
     public String returnToLogin() {
    	 return "login";
     }
	
	@RequestMapping(value="/{userId}",method=RequestMethod.GET)
	public String shoppingCart(@PathVariable BigInteger userId, Model model) {
		
			List<Goods> goods=shoppingcartService.getGoodsByUserId(userId);
			Map<Goods,Integer> goodsAmount=new HashMap<>();
			for(Goods g:goods) {
				int amount=shoppingcartService.getAmountByUserIdAndGoodsId(userId,g.getId());
				goodsAmount.put(g, amount);
			}
			model.addAttribute("goodsAmount", goodsAmount);
			model.addAttribute("goodList", goods);
			return "shoppingCart";
		
		
	}
	
	@RequestMapping(value="/addInCart",method=RequestMethod.POST)
	@ResponseBody
	public int add(@RequestBody Map<String,String> maps,HttpSession session) {
		//System.out.println("有没有");
		//System.out.println(session.getAttribute("cartCount"));
		BigInteger userid=new BigInteger(maps.get("user_id"));
		BigInteger goodsid=new BigInteger(maps.get("goods_id"));
		int amount=Integer.parseInt(maps.get("amount"));
		ShoppingCart entity=new ShoppingCart(userid,goodsid,amount);
		List<Goods> usergoodList=shoppingcartService.getGoodsByUserId(userid);
		if(usergoodList.size()>0) {
			Goods[] goodsArr=usergoodList.toArray(new Goods[usergoodList.size()]);
			quickSort(goodsArr,0,goodsArr.length-1);
			int index=sort(goodsArr,goodsid,0,goodsArr.length-1);
			if(index!=-1) {
				int before=shoppingcartService.getAmountByUserIdAndGoodsId(userid, goodsid);
				ShoppingCart addCount=new ShoppingCart(userid,goodsid,amount+before);
				return shoppingcartService.update(addCount);
			}
		}
		int newCartCount=(int)session.getAttribute("cartCount")+1;
		session.setAttribute("cartCount", newCartCount);
		return shoppingcartService.add(entity);
	}
	
	
	@RequestMapping(value="/clear",method=RequestMethod.POST)
	@ResponseBody
	public boolean redirectToClear(BigInteger userID,BigInteger[] ids,HttpSession session) {
		BigDecimal bigSum = new BigDecimal(0);
		Map<Goods,Integer> goodsMap=new HashMap<>();
		Map<Goods,BigDecimal> goodsSumMap=new HashMap<>();
		//String title=map.get("goodTitle");
		for(BigInteger bi:ids) {
			Goods goods=goodsService.findById(bi);
			int amount=shoppingcartService.getAmountByUserIdAndGoodsId(userID, bi);
			BigDecimal sum=goods.getPrice().multiply(BigDecimal.valueOf((int)amount));
			bigSum=bigSum.add(sum);
			//System.out.println(bigSum);
			goodsSumMap.put(goods, sum);
			goodsMap.put(goods, amount);
		}
		session.setAttribute("bigSum", bigSum);
		session.setAttribute("littleSum",goodsSumMap);
		session.setAttribute("clearGoodList", goodsMap);
		
		
		
		return true;
	}
	
	@RequestMapping("/turnToClear")
	public String turn() {
		return "clearing";
	}
	
	/**
	 * 快速排序
	*/
	public void quickSort(Goods[] arr,int low,int high) {
		int i,j;
		Goods temp,t;
		if(low>high) {
			return;
		}
		i=low;
		j=high;
		temp=arr[low];
		
		
		while(i<j) {
			//j先出发
			while(temp.getId().compareTo(arr[j].getId())==-1&&i<j) {
				j--;
			}
			while(temp.getId().compareTo(arr[i].getId())==1&&i<j) {
				i++;
			}
			if(i<j) {
				t=arr[i];
				arr[i]=arr[j];
				arr[j]=t;
			}
		}
		arr[low]=arr[i];
		arr[i]=temp;
		
		quickSort(arr,low,j-1);
		quickSort(arr,j+1,high);
		
		
	}
	
	/**
	 * 二分查找
	 */
	
	public int sort(Goods[] arr,BigInteger id,int low,int high) {
		if(low<=high) {
			int mid=(low+high)/2;
			if(id.compareTo(arr[mid].getId())==0) {
				return mid;
			}
			else if(id.compareTo(arr[mid].getId())==-1) {
				sort(arr,id,low,mid-1);
			}
			else {
				sort(arr,id,mid+1,high);
			}
		}
		return -1;
	}
}
