package com.zero.pojo;

import java.sql.Date;

/**
 * 
 * @author lhy
 *
 */

//����
public class Posts {
	
	//����ID
	private Integer pid;
	//�����û�ID
	private Integer user_id;
	//���ڰ��ID
	private Integer board_id;
	//��֪����ʲô����ɾ
	private String postcontent;
	//�������ͣ��о�û�ã���ɾ
	private Integer posttype;
	//������Ŀ
	private String posttitle;
	//����ʱ��
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
