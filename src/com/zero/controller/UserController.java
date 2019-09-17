package com.zero.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zero.pojo.User;
import com.zero.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/personal")
	public String BoardsManage(Model model,HttpServletRequest req){
	   //查询菜单数据，返回给前端
		List<User> uList=userService.getAllUser();
		model.addAttribute("uList", uList);
		return "personal";
	}
	
	
	@RequestMapping("/login")
	public void login(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		 PrintWriter out = resp.getWriter();
	        //获取参数
	        String uname = req.getParameter("username");

	        //表单中的password
	        String pwd = req.getParameter("password");
	        
	        User u = userService.checkUser(uname);
	     
	        //判断用户是否为空
	        if(null != u){
	            //进一步判断密码是否有效的.
	            if(u.getPassword().equals(pwd)){
  
	                req.getSession().setAttribute("user",u);
                    
	                out.print("2");
	            }else{
	                //密码错误的..
	                out.print("1");
	            }
	        }else{
	            //用户不存在...
	            out.print("0");
	        }
	    }
	
	@RequestMapping("/exit")
	public String  exit(HttpServletRequest req)
	{
		 req.getSession().invalidate();
		 return "index";
	}
	
	@RequestMapping("/regist")
	public String  regist()
	{
		 return "regist";
	}
	
	@RequestMapping("/userregist")
	public void  userregist(HttpServletRequest req,HttpServletResponse resp) throws IOException
	{
		
		     
		        PrintWriter out = resp.getWriter();
				String code=req.getParameter("checkImg");
				String rightCode=(String) req.getSession().getAttribute("checkCode");
				  System.out.print(code+"_____@@@@@@@!!!!!!"+rightCode);
				User u =new User();
				u.setUsername(req.getParameter("username"));
				u.setPassword(req.getParameter("password"));
				if(req.getParameter("sex").equals("男"))
				{
					u.setSex(1);
				}else if(req.getParameter("sex").equals("女"))
				{
					u.setSex(0);
				}
				
				u.setEmail(req.getParameter("email"));
				u.setBirthdate(req.getParameter("birthdate"));
				//首先判断验证码，验证码正确，才能继续
				//System.out.println(u.getEmail()+"==========================="+u.getSex());
				if(code.equals(rightCode)){
					int s=userService.checkRegist(u);
					if(s==1){
						//成功
						out.print("0");
					}else{
						//失败
						out.print("1");
					}
				}else{
                    //验证码错误
					out.print("2");
				}
			}
}
