package com.zero.pojo;


/***
 * 
 * @author lhy
 *
 */

//���
public class Boards {
	
	//���id
	private Integer bid;
	//����ԱID --���Բ�Ҫ
	private Integer user_id;
	//������----���Բ�Ҫ
	private Integer boardclassfication;
	//�������
	private String boardname;
	//������
	private String boardintroduction;
	//���ͼƬ----����
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
