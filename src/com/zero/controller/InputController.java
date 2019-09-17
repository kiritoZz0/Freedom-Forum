package com.zero.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zero.pojo.Posts;
import com.zero.service.PostsService;

@Controller
public class InputController {

	@Autowired
	PostsService postService;
	
	@RequestMapping("/input_post")
	public String inputPost(){
		return "input_post";
	}
	
	
	
	@RequestMapping("/input")
	public void input(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		 PrintWriter out = resp.getWriter();
		 
		 	
		 
	        //获取参数
	        String ptitle = req.getParameter("title");

	        //表单中的password
	        String pcontent = req.getParameter("content");
	        
	        //
	        
	        System.out.println(ptitle+"==================="+pcontent);
	        
	        
	        
	        
	      
	       if(ptitle.trim()!=null&&ptitle.trim()!="")
	       {

	    	   Posts p = new Posts();
		        p.setPosttitle(ptitle);
		        p.setPostcontent(pcontent);
		       int s= postService.savePost(p);
	    	   if(s==1)
		        {
		        	out.println(1);
		        }else{
		        	out.println(0);
		        }
	    	   
	       }
	       else
	       {
	    	   out.println(2);
	       }
	        
	        
	        
///	        Date date = new Date(0);
//	        long times = date.getTime();//时间戳
//	        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//	        String dateString = formatter.format(date);
	        
	     
	    }

}
