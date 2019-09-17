package com.zero.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zero.mapper.FloorsMapper;
import com.zero.mapper.UserMapper;
import com.zero.pojo.Floors;
@Service
public class FloorsService {

	@Autowired
	public FloorsMapper floorsMapper;
	
	public List<Floors> getMyPing() {
		List<Floors> list=floorsMapper.getMyPing();
		if(list!=null&&list.size()>0){
			return list;
		}else{
			return null;
		}
	}
	
	/*查询可管理板块所有信息*/
	public  List<Floors>   selectAllFloors(){
		//调用mapper中方法，获取数据库操作结果
		List<Floors> list= floorsMapper.selectAllFloors();
		if(list!=null&&list.size()>0){
			return list;
		}else{
			return null;
		}
	}	
	//删除板块
	 public  void  deleteFloors(Integer fid){
		 floorsMapper.deleteFloors(fid);
	 }
	 
	 
}
