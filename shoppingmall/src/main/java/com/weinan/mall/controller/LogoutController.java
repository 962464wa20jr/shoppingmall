package com.weinan.mall.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.weinan.mall.entities.User;

@Controller
public class LogoutController {

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		User user=new User("","");
		session.setAttribute("currentUser", user);
		return "index";
	}
}
