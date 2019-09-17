package com.zero.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zero.pojo.Boards;

public interface BoardsMapper {
   public List<Boards> selectAll ();
   public  void  delectBoards(@Param("bid")Integer bid);
}
