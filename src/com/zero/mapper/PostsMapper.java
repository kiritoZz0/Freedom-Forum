package com.zero.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zero.pojo.Floors;
import com.zero.pojo.Posts;

public interface PostsMapper {
    public List<Posts> getMyTie();
    public int savePost(Posts post);
    public List<Posts> selectAllPosts();
    public void deletePosts(@Param("pid")Integer pid);

}
