package com.feswork.board.model.vo;

import java.sql.Date;

public class board {
	private int rv_No;
	private int fe_Code;
	private int Mem_Id;
	private String rv_con;
	private String post_imgae;
	private int likes;
	private Date post_cd;
	public board() {
		super();
	}
	public board(int rv_No, int fe_Code, int mem_Id, String rv_con, String post_imgae, int likes, Date post_cd) {
		super();
		this.rv_No = rv_No;
		this.fe_Code = fe_Code;
		Mem_Id = mem_Id;
		this.rv_con = rv_con;
		this.post_imgae = post_imgae;
		this.likes = likes;
		this.post_cd = post_cd;
	}
	public int getRv_No() {
		return rv_No;
	}
	public void setRv_No(int rv_No) {
		this.rv_No = rv_No;
	}
	public int getFe_Code() {
		return fe_Code;
	}
	public void setFe_Code(int fe_Code) {
		this.fe_Code = fe_Code;
	}
	public int getMem_Id() {
		return Mem_Id;
	}
	public void setMem_Id(int mem_Id) {
		Mem_Id = mem_Id;
	}
	public String getRv_con() {
		return rv_con;
	}
	public void setRv_con(String rv_con) {
		this.rv_con = rv_con;
	}
	public String getPost_imgae() {
		return post_imgae;
	}
	public void setPost_imgae(String post_imgae) {
		this.post_imgae = post_imgae;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	public Date getPost_cd() {
		return post_cd;
	}
	public void setPost_cd(Date post_cd) {
		this.post_cd = post_cd;
	}
	@Override
	public String toString() {
		return "board [rv_No=" + rv_No + ", fe_Code=" + fe_Code + ", Mem_Id=" + Mem_Id + ", rv_con=" + rv_con
				+ ", post_imgae=" + post_imgae + ", likes=" + likes + ", post_cd=" + post_cd + "]";
	}
	
	
}
