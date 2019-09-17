package com.zero.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zero.pojo.Boards;
import com.zero.pojo.User;
import com.zero.service.BoardsService;

@Controller
public class BoardsController {
	
	@Autowired
	public BoardsService boardsService;
	
	@RequestMapping("/backstage")
	public String Backstage(){
		return "backstage";
	}
	
	//��ʾ�ɹ�����
	@RequestMapping("/Boardsmanage")
	public String BoardsManage(Model model,HttpServletRequest req){
	   //��ѯ�˵����ݣ����ظ�ǰ��
		List<Boards> bList=boardsService.selectAll();
		System.out.println(bList);
		model.addAttribute("bList", bList);
		return "Boardsmanage";
	}
	
	 //ɾ�����
	@RequestMapping("/delete")
	public String BoardsDelect(Integer bid){
		
		boardsService.delectBoards(bid);	
		
		return "redirect:Boardsmanage.do";
	}	
}
