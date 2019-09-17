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
	   //��ѯ�˵����ݣ����ظ�ǰ��
		List<User> uList=userService.getAllUser();
		model.addAttribute("uList", uList);
		return "personal";
	}
	
	
	@RequestMapping("/login")
	public void login(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		 PrintWriter out = resp.getWriter();
	        //��ȡ����
	        String uname = req.getParameter("username");

	        //���е�password
	        String pwd = req.getParameter("password");
	        
	        User u = userService.checkUser(uname);
	     
	        //�ж��û��Ƿ�Ϊ��
	        if(null != u){
	            //��һ���ж������Ƿ���Ч��.
	            if(u.getPassword().equals(pwd)){
  
	                req.getSession().setAttribute("user",u);
                    
	                out.print("2");
	            }else{
	                //��������..
	                out.print("1");
	            }
	        }else{
	            //�û�������...
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
				if(req.getParameter("sex").equals("��"))
				{
					u.setSex(1);
				}else if(req.getParameter("sex").equals("Ů"))
				{
					u.setSex(0);
				}
				
				u.setEmail(req.getParameter("email"));
				u.setBirthdate(req.getParameter("birthdate"));
				//�����ж���֤�룬��֤����ȷ�����ܼ���
				//System.out.println(u.getEmail()+"==========================="+u.getSex());
				if(code.equals(rightCode)){
					int s=userService.checkRegist(u);
					if(s==1){
						//�ɹ�
						out.print("0");
					}else{
						//ʧ��
						out.print("1");
					}
				}else{
                    //��֤�����
					out.print("2");
				}
			}
}
