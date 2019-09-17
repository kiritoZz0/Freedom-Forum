package com.zero.pojo;


/***
 * 
 * @author lhy
 *
 */

//板块
public class Boards {
	
	//板块id
	private Integer bid;
	//管理员ID --可以不要
	private Integer user_id;
	//板块分类----可以不要
	private Integer boardclassfication;
	//板块名字
	private String boardname;
	//板块介绍
	private String boardintroduction;
	//板块图片----待定
	private String boardimage;
	public Integer getBid() {
		return bid;
	}
	public void setBid(Integer bid) {
		this.bid = bid;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getBoardclassfication() {
		return boardclassfication;
	}
	public void setBoardclassfication(Integer boardclassfication) {
		this.boardclassfication = boardclassfication;
	}
	public String getBoardname() {
		return boardname;
	}
	public void setBoardname(String boardname) {
		this.boardname = boardname;
	}
	public String getBoardintroduction() {
		return boardintroduction;
	}
	public void setBoardintroduction(String boardintroduction) {
		this.boardintroduction = boardintroduction;
	}
	public String getBoardimage() {
		return boardimage;
	}
	public void setBoardimage(String boardimage) {
		this.boardimage = boardimage;
	}
	
}
