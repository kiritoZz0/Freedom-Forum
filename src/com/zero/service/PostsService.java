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
	/*查询可管理板块所有信息*/
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
	
	/*查询可管理板块所有信息*/
	public  List<Posts>  selectAllPosts(){
		//调用mapper中方法，获取数据库操作结果
		List<Posts> list= postsMapper.selectAllPosts();
		if(list!=null&&list.size()>0){
			return list;
		}else{
			return null;
		}
	}	
	//删除板块
	 public  void  deletePosts(Integer pid){
		 postsMapper.deletePosts(pid);
	 }
}
