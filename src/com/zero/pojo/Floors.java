package com.zero.pojo;

import java.sql.Date;

/**
 * 
 * @author lhy
 *
 */

//回帖
public class Floors {
	
	//回复的帖子id
	private Integer fid;
	//发帖人id
	private Integer user_id;
	//回帖id
	private Integer post_id;
	//回复所在楼层
	private Integer floornum;
	//回帖时间
	private Date floortime;
	//回帖内容
	private String floorcontent;
	public Integer getFid() {
		return fid;
	}
	public void setFid(Integer fid) {
		this.fid = fid;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getPost_id() {
		return post_id;
	}
	public void setPost_id(Integer post_id) {
		this.post_id = post_id;
	}
	public Integer getFloornum() {
		return floornum;
	}
	public void setFloornum(Integer floornum) {
		this.floornum = floornum;
	}
	public Date getFloortime() {
		return floortime;
	}
	public void setFloortime(Date floortime) {
		this.floortime = floortime;
	}
	public String getFloorcontent() {
		return floorcontent;
	}
	public void setFloorcontent(String floorcontent) {
		this.floorcontent = floorcontent;
	}
	
}
