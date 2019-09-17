package com.zero.pojo;

import java.sql.Date;

/**
 * 
 * @author lhy
 *
 */

//帖子
public class Posts {
	
	//帖子ID
	private Integer pid;
	//发帖用户ID
	private Integer user_id;
	//所在板块ID
	private Integer board_id;
	//不知道是什么，可删
	private String postcontent;
	//回帖类型，感觉没用，可删
	private Integer posttype;
	//帖子题目
	private String posttitle;
	//发帖时间
	private Date posttime;
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getBoard_id() {
		return board_id;
	}
	public void setBoard_id(Integer board_id) {
		this.board_id = board_id;
	}
	

	public String getPostcontent() {
		return postcontent;
	}
	public void setPostcontent(String postcontent) {
		this.postcontent = postcontent;
	}
	public Integer getPosttype() {
		return posttype;
	}
	public void setPosttype(Integer posttype) {
		this.posttype = posttype;
	}
	public String getPosttitle() {
		return posttitle;
	}
	public void setPosttitle(String posttitle) {
		this.posttitle = posttitle;
	}
	public Date getPosttime() {
		return posttime;
	}
	public void setPosttime(Date posttime) {
		this.posttime = posttime;
	}
	

}
