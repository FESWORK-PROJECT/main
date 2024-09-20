package com.feswork.review.model.vo;

import java.sql.Date;

public class Review {
	
	private int rvNo;
	private int festivalNo;
	private String memId; 
	private String rvTitle;
	private String rvContent;
	private	String rvImg;
	private	Date rvDate;
	private int rvCount;
	
	public int getRvCount() {
		return rvCount;
	}
	public void setRvCount(int rvCount) {
		this.rvCount = rvCount;
	}
	public int getRvNo() {
		return rvNo;
	}
	
	public Review() {}
	
	public Review(int rvNo, int festivalNo, String memId, String rvTitle, String rvContent, String rvImg,
			java.sql.Date rvDate, int rvCount) {
		super();
		this.rvNo = rvNo;
		this.festivalNo = festivalNo;
		this.memId = memId;
		this.rvTitle = rvTitle;
		this.rvContent = rvContent;
		this.rvImg = rvImg;
		this.rvDate = rvDate;
		this.rvCount = rvCount;
	}
	public int Date() {
		return rvNo;
	}
	public void setRvNo(int rvNo) {
		this.rvNo = rvNo;
	}
	public int getFestivalNo() {
		return festivalNo;
	}
	public void setFestivalNo(int festivalNo) {
		this.festivalNo = festivalNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getRvTitle() {
		return rvTitle;
	}
	public void setRvTitle(String rvTitle) {
		this.rvTitle = rvTitle;
	}
	public String getRvContent() {
		return rvContent;
	}
	public void setRvContent(String rvContent) {
		this.rvContent = rvContent;
	}
	public String getRvImg() {
		return rvImg;
	}
	public void setRvImg(String rvImg) {
		this.rvImg = rvImg;
	}
	public Date getRvDate() {
		return rvDate;
	}
	public void setRvDate(Date rvDate) {
		this.rvDate = rvDate;
	}
	
	
	@Override
	public String toString() {
		return "Review [rvNo=" + rvNo + ", festivalNo=" + festivalNo + ", memId=" + memId + ", rvTitle=" + rvTitle
				+ ", rvContent=" + rvContent + ", rvImg=" + rvImg + ", rvDate=" + rvDate + "]";
	}
	
	
	
	
	
	

}
