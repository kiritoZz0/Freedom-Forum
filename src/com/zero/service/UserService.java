package com.zero.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zero.mapper.UserMapper;
import com.zero.pojo.User;


/**
 * 
 * @author cxd
 * @see  �й��û����߼������
 *       ������յ�����
 *       �������ݿ������Ľ��
 *
 */
@Service
public class UserService {
	
	@Autowired
	public UserMapper userMapper;
	
	public String checkName(String username){
		//�û���ȥ���ո�
		String name=username.trim();
		if(name==null|| name.equals("")){
			//����һ���������ʾ�û��û�������Ϊ��
			return "2";
		}else{
			//�û������ã�����mapper��ѯ���
			User user=userMapper.selectByUserName(name);
			if(user==null){
				//����"1"���������ע��
				return "1";
			}else{
				//"0"�����û����Ѿ�����
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
					//�ɹ�
					return 1;
				}else{
					//ʧ��
					System.out.println("�������");
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
