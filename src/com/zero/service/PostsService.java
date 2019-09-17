package com.zero.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zero.mapper.PostsMapper;
import com.zero.pojo.Posts;

@Service
public class PostsService {
	@Autowired
	public PostsMapper postsMapper;
	/*��ѯ�ɹ�����������Ϣ*/
	public List<Posts> getMyTie() {
		List<Posts> list=postsMapper.getMyTie();
		if(list!=null&&list.size()>0){
			return list;
		}else{
			return null;
		}
	}
	
	public int savePost(Posts post) {
		
		return postsMapper.savePost(post);
	}
	
	/*��ѯ�ɹ�����������Ϣ*/
	public  List<Posts>  selectAllPosts(){
		//����mapper�з�������ȡ���ݿ�������
		List<Posts> list= postsMapper.selectAllPosts();
		if(list!=null&&list.size()>0){
			return list;
		}else{
			return null;
		}
	}	
	//ɾ�����
	 public  void  deletePosts(Integer pid){
		 postsMapper.deletePosts(pid);
	 }
}
