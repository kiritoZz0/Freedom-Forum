package com.zero.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zero.mapper.BoardsMapper;
import com.zero.pojo.Boards;

@Service
public class BoardsService {
	@Autowired
	public BoardsMapper boardsMapper;
	
	/*查询可管理板块所有信息*/
	public  List<Boards>   selectAll(){
		//调用mapper中方法，获取数据库操作结果
		List<Boards> list= boardsMapper.selectAll();
		if(list!=null&&list.size()>0){
			return list;
		}else{
			return null;
		}
	}	
	//删除板块
	 public  void  delectBoards(Integer bid){
		 boardsMapper.delectBoards(bid);
	 }
}
