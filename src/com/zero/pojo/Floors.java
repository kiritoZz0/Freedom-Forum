package com.zero.pojo;

import java.sql.Date;

/**
 * 
 * @author lhy
 *
 */

//����
public class Floors {
	
	//�ظ�������id
	private Integer fid;
	//������id
	private Integer user_id;
	//����id
	private Integer post_id;
	//�ظ�����¥��
	private Integer floornum;
	//����ʱ��
	private Date floortime;
	//��������
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
