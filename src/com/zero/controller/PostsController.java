package com.zero.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zero.pojo.Posts;
import com.zero.service.PostsService;

@Controller
public class PostsController {
	@Autowired
	private PostsService postsService;
	@RequestMapping("/tie")
	public String PostsManage(Model model,HttpServletRequest req){
	   //��ѯ�˵����ݣ����ظ�ǰ��
		List<Posts> tList=postsService.getMyTie();
		model.addAttribute("tList", tList);
		return "tie";
	}
	//��ʾ�ɹ�����
		@RequestMapping("/postsmanage")
		public String PostsMan(Model model,HttpServletRequest req){
		   //��ѯ�˵����ݣ����ظ�ǰ��
			List<Posts> pList=postsService.selectAllPosts();
			model.addAttribute("pList", pList);
			return "postsmanage";
		}
		
		 //ɾ�����
		@RequestMapping("/delete3")
		public String PostsDelete(Integer pid,HttpServletResponse resp){
			
			postsService.deletePosts(pid);
			
			return "redirect:postsmanage.do";
		}
}
