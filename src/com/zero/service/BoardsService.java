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
	
	/*��ѯ�ɹ�����������Ϣ*/
	public  List<Boards>   selectAll(){
		//����mapper�з�������ȡ���ݿ�������
		List<Boards> list= boardsMapper.selectAll();
		if(list!=null&&list.size()>0){
			return list;
		}else{
			return null;
		}
	}	
	//ɾ�����
	 public  void  delectBoards(Integer bid){
		 boardsMapper.delectBoards(bid);
	 }
}
