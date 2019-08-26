package com.weinan.mall.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.weinan.mall.entities.User;
import com.weinan.mall.service.ShoppingcartService;
import com.weinan.mall.service.UserService;

@Controller
@RequestMapping("/login")
public class LoginController {
	@Resource
	private UserService userService;
	
	@Resource
	private ShoppingcartService shoppingcartService;
	
	private User currentUser;

	@RequestMapping(method=RequestMethod.GET)
	public String login() {
		System.out.println("到这来了");
		System.out.println("aaa");
		return "login";
	}
	
	@RequestMapping(value="/validate",method=RequestMethod.POST)
	@ResponseBody
	public User validate(@RequestBody User user,HttpSession session) {
		currentUser=userService.findUserByUsernameAndPassword(user);
		if(currentUser!=null) {
			if(shoppingcartService.isUserIn(currentUser.getId())!=0) {
				int amount=shoppingcartService.getAmountByUserId(currentUser.getId());
				session.setAttribute("cartCount", amount);
			}
			else {
				session.setAttribute("cartCount", 0);
			}
			
			session.setAttribute("currentUser", currentUser);
		}
		
		return currentUser;
	}
	
	@RequestMapping(value="/findUser")
	public String findUser(Model model) {
		//model.addAttribute("currentUser", currentUser);
		return "index";
	}
}
