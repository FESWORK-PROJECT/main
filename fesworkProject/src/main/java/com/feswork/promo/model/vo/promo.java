package com.feswork.promo.model.vo;

import java.sql.Date;

public class promo {
	private int rv_Vo;
	private int fes_No;
	private String mem_Id;
	private String rv_Con;
	private String rv_Img;
	private int rv_Like;
	private Date rv_Date;
	public promo() {
		super();
	}
	public promo(int rv_Vo, int fes_No, String mem_Id, String rv_Con, String rv_Img, int rv_Like, Date rv_Date) {
		super();
		this.rv_Vo = rv_Vo;
		this.fes_No = fes_No;
		this.mem_Id = mem_Id;
		this.rv_Con = rv_Con;
		this.rv_Img = rv_Img;
		this.rv_Like = rv_Like;
		this.rv_Date = rv_Date;
	}
	public int getRv_Vo() {
		return rv_Vo;
	}
	public void setRv_Vo(int rv_Vo) {
		this.rv_Vo = rv_Vo;
	}
	public int getFes_No() {
		return fes_No;
	}
	public void setFes_No(int fes_No) {
		this.fes_No = fes_No;
	}
	public String getMem_Id() {
		return mem_Id;
	}
	public void setMem_Id(String mem_Id) {
		this.mem_Id = mem_Id;
	}
	public String getRv_Con() {
		return rv_Con;
	}
	public void setRv_Con(String rv_Con) {
		this.rv_Con = rv_Con;
	}
	public String getRv_Img() {
		return rv_Img;
	}
	public void setRv_Img(String rv_Img) {
		this.rv_Img = rv_Img;
	}
	public int getRv_Like() {
		return rv_Like;
	}
	public void setRv_Like(int rv_Like) {
		this.rv_Like = rv_Like;
	}
	public Date getRv_Date() {
		return rv_Date;
	}
	public void setRv_Date(Date rv_Date) {
		this.rv_Date = rv_Date;
	}
	@Override
	public String toString() {
		return "promo [rv_Vo=" + rv_Vo + ", fes_No=" + fes_No + ", mem_Id=" + mem_Id + ", rv_Con=" + rv_Con
				+ ", rv_Img=" + rv_Img + ", rv_Like=" + rv_Like + ", rv_Date=" + rv_Date + "]";
	}
}
