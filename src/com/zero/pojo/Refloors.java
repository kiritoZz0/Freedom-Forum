package com.zero.pojo;

/**
 * 
 * @author lhy
 *
 */

//¥��¥  �ظ��Ļظ�
public class Refloors {
	
	//¥��¥id
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
	//�ظ�¥��¥���û�id
	private Integer reuser_id;
	//����¥��id
	private Integer floor_id;
	//��֪���Ǹ�ɶ����ɾ
	private Integer messagestate;
	//������id
	private Integer user_id;
	//�ظ�������
	private String refloorcontent;
	//�ظ�ʱ��
	private String refloortime;
	
}
