package com.feswork.information.model.vo;

import java.sql.Date;

public class Information {

	private int festivalNo;
	private String memId;
	private String localCode;
	private	String festivalName;
	private	Date openDate;
	private	Date closeDate;
	private int fesLike;
	private	String fesDescription;
	private String fesAdd;
	private String fesImage;
	
	
	public Information(){
		
	}
	public Information(int festivalNo, String memId,
			String localCode,
			String festivalName, Date openDate,
			Date closeDate, int fesLike, String fesDescription,
			String fesAdd, String fesImage) {
	
		
		this.festivalNo = festivalNo;
		this.memId = memId;
		this.localCode = localCode;
		this.festivalName = festivalName;
		this.openDate = openDate;
		this.closeDate = closeDate;
		this.fesLike = fesLike;
		this.fesDescription = fesDescription;
		this.fesAdd = fesAdd;
		this.fesImage = fesImage;
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
	public String getLocalCode() {
		return localCode;
	}
	public void setLocalCode(String localCode) {
		this.localCode = localCode;
	}
	public String getFestivalName() {
		return festivalName;
	}
	public void setFestivalName(String festivalName) {
		this.festivalName = festivalName;
	}
	public Date getOpenDate() {
		return openDate;
	}
	public void setOpenDate(Date openDate) {
		this.openDate = openDate;
	}
	public Date getCloseDate() {
		return closeDate;
	}
	public void setCloseDate(Date closeDate) {
		this.closeDate = closeDate;
	}
	public int getFesLike() {
		return fesLike;
	}
	public void setFesLike(int fesLike) {
		this.fesLike = fesLike;
	}
	public String getFesDescription() {
		return fesDescription;
	}
	public void setFesDescription(String fesDescription) {
		this.fesDescription = fesDescription;
	}
	public String getFesAdd() {
		return fesAdd;
	}
	public void setFesAdd(String fesAdd) {
		this.fesAdd = fesAdd;
	}
	public String getFesImage() {
		return fesImage;
	}
	public void setFesImage(String fesImage) {
		this.fesImage = fesImage;
	}
	
	@Override
	public String toString() {
		return "FestivalInformation [festivalNo=" + festivalNo + ", memId=" + memId + ", localCode=" + localCode
				+ ", festivalName=" + festivalName + ", openDate=" + openDate + ", closeDate=" + closeDate
				+ ", fesLike=" + fesLike + ", fesDescription=" + fesDescription + ", fesAdd=" + fesAdd + ", fesImage="
				+ fesImage + "]";
	}

	
	
	

	
	
}
