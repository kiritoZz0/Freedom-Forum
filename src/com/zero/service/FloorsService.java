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
	
	/*��ѯ�ɹ�����������Ϣ*/
	public  List<Floors>   selectAllFloors(){
		//����mapper�з�������ȡ���ݿ�������
		List<Floors> list= floorsMapper.selectAllFloors();
		if(list!=null&&list.size()>0){
			return list;
		}else{
			return null;
		}
	}	
	//ɾ�����
	 public  void  deleteFloors(Integer fid){
		 floorsMapper.deleteFloors(fid);
	 }
	 
	 
}
