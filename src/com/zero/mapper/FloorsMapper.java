package com.zero.mapper;

import java.util.List;

import com.zero.pojo.Floors;
import com.zero.pojo.User;
import org.apache.ibatis.annotations.Param;
public interface FloorsMapper {
    public List<Floors> getMyPing();
    public List<Floors> selectAllFloors();
	public  void  deleteFloors(@Param("fid")Integer fid);
}
