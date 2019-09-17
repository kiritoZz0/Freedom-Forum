package com.zero.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zero.mapper.UserMapper;
import com.zero.pojo.User;


/**
 * 
 * @author cxd
 * @see  有关用户的逻辑处理层
 *       处理接收的请求
 *       处理数据库操作后的结果
 *
 */
@Service
public class UserService {
	
	@Autowired
	public UserMapper userMapper;
	
	public String checkName(String username){
		//用户名去掉空格
		String name=username.trim();
		if(name==null|| name.equals("")){
			//返回一个结果，提示用户用户名不能为空
			return "2";
		}else{
			//用户名可用，调用mapper查询结果
			User user=userMapper.selectByUserName(name);
			if(user==null){
				//返回"1"，代表可以注册
				return "1";
			}else{
				//"0"代表用户名已经存在
				return "0";
			}
			
		}
	}
	
	public  User checkUser(String username){
		return userMapper.selectByUserName(username);
		
	}
	
	public int checkRegist(User user){
		String code=checkName(user.getUsername());
		String pass=user.getPassword().trim();
		if(code.equals("1")){
			if(pass!=null&&!pass.equals("")){
				user.setPower(0);
				user.setExperience(0);
				int s=userMapper.addUser(user);
				if(s==1){
					//成功
					return 1;
				}else{
					//失败
					System.out.println("插入出错");
					return 0;
					
				}
			}else{
				return 0;
			}	
		}else{
			
			return 0;
		}
	}
	
	public List<User> getAllUser(){
		List<User> list=userMapper.getAllUser();
		if(list!=null&&list.size()>0){
			return list;
		}else{
			return null;
		}
	}
	
}
