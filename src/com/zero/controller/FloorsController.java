package com.zero.controller;

import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.zero.pojo.Floors;
import com.zero.service.FloorsService;

@Controller
public class FloorsController {

	@Autowired
	private FloorsService floorsService;
	@RequestMapping("/ping")
	public String PingManage(Model model,HttpServletRequest req){
	   //��ѯ�˵����ݣ����ظ�ǰ��
		List<Floors> gList=floorsService.getMyPing();
		model.addAttribute("gList", gList);
		return "ping";
	}
	
	//��ʾ�ɹ�����
		@RequestMapping("/floorsmanage")
		public String FloorsManage(Model model,HttpServletRequest req){
		   //��ѯ�˵����ݣ����ظ�ǰ��
			List<Floors> fList=floorsService.selectAllFloors();
			model.addAttribute("fList", fList);
			return "floorsmanage";
		}
		
		 //ɾ�����
		@RequestMapping("/delete2")
		public String FloorsDelete(Integer fid,HttpServletResponse resp){
			
			floorsService.deleteFloors(fid);
			
			return "redirect:floorsmanage.do";
		}

}
