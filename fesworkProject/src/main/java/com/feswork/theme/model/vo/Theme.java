package com.feswork.theme.model.vo;

public class Theme {
	
	private int festivalNo;
	private String themeCode;
	
	
	public Theme(){}
	


	public Theme(int festivalNo, String themeCode) {
		super();
		this.festivalNo = festivalNo;
		this.themeCode = themeCode;
	}

	public int getFestivalNo() {
		return festivalNo;
	}
	public void setFestivalNo(int festivalNo) {
		this.festivalNo = festivalNo;
	}
	public String getThemeCode() {
		return themeCode;
	}
	public void setThemeCode(String themeCode) {
		this.themeCode = themeCode;
	}



	@Override
	public String toString() {
		return "Theme [festivalNo=" + festivalNo + ", themeCode=" + themeCode + "]";
	}
	
	
	
	
	
	

}
