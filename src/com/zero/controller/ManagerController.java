package com.zero.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagerController {
	
	@RequestMapping("/manage")
	public String index(){
		System.out.print("=====================================================================================");
		return "manage";
	}
	
}
