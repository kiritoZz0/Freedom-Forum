package com.zero.pojo;

/**
 * 
 * @author lhy
 *
 */

//楼中楼  回复的回复
public class Refloors {
	
	//楼中楼id
	private Integer refid;
	public Integer getRefid() {
		return refid;
	}
	public void setRefid(Integer refid) {
		this.refid = refid;
	}
	public Integer getReuser_id() {
		return reuser_id;
	}
	public void setReuser_id(Integer reuser_id) {
		this.reuser_id = reuser_id;
	}
	public Integer getFloor_id() {
		return floor_id;
	}
	public void setFloor_id(Integer floor_id) {
		this.floor_id = floor_id;
	}
	public Integer getMessagestate() {
		return messagestate;
	}
	public void setMessagestate(Integer messagestate) {
		this.messagestate = messagestate;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getRefloorcontent() {
		return refloorcontent;
	}
	public void setRefloorcontent(String refloorcontent) {
		this.refloorcontent = refloorcontent;
	}
	public String getRefloortime() {
		return refloortime;
	}
	public void setRefloortime(String refloortime) {
		this.refloortime = refloortime;
	}
	//回复楼中楼的用户id
	private Integer reuser_id;
	//所在楼层id
	private Integer floor_id;
	//不知道是个啥，可删
	private Integer messagestate;
	//发帖人id
	private Integer user_id;
	//回复的内容
	private String refloorcontent;
	//回复时间
	private String refloortime;
	
}
