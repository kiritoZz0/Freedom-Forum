package com.zero.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zero.pojo.User;
import com.zero.service.UserService;


@Controller
public class Indexcontroller {
	
	

	@RequestMapping("/index")
	public String index(){
		System.out.print("=====================================================================================");
		return "index2";
	}
	
	
}
