package com.zero.mapper;

import java.util.List;

import com.zero.pojo.User;

public interface UserMapper {
	
	
	public  User  selectByUserName(String username);
	
	
    public int addUser(User user);
    
    	
        public List<User> getAllUser();
 
}
