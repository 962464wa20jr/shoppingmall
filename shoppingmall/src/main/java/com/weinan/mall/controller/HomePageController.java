package com.weinan.mall.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomePageController {

	@RequestMapping("/")
	public String firstLoad(HttpSession session) {
		session.setAttribute("cartCount",0);
		return "index";
	}
	
	@RequestMapping("/homePage")
	public String home() {
		
		return "index";
	}
}
