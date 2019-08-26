package com.weinan.mall.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.weinan.mall.entities.User;
import com.weinan.mall.service.UserService;

@Controller
@RequestMapping("/regedit")
public class RegeditController {
	
	@Resource
	private UserService userService;
	
	@RequestMapping("/regeditTurn")
	public String regedit() {
		return "regedit";
	}
	
	@RequestMapping(value="/addUser",method=RequestMethod.POST)
	@ResponseBody
	public boolean addUser(@RequestBody User user) {
		//System.out.println(userMap.get("sex"));
		//User user=new User(userMap.get("username"),userMap.get("password"),userMap.get("email"),userMap.get("nickname"),
			//	Integer.parseInt(userMap.get("sex")));
		if(userService.add(user)>=1) {
			return true;
		}
		return false;
		
	}

}
