package com.feswork.promo.model.vo;

import java.sql.Date;

public class festival {
	private int fes_No;
	private String mem_Id;
	private String local_Code;
	private String fes_Name;
	private Date open_Date;
	private Date close_Date;
	private int fes_Like;
	private String fes_Des;
	private String fes_Add;
	private String fes_Img;
	private	String fes_Title;
	private String status;
	
	public festival() {
		super();
	}

	public festival(int fes_No, String mem_Id, String local_Code, String fes_Name, Date open_Date, Date close_Date,
			int fes_Like, String fes_Des, String fes_Add, String fes_Img, String fes_Title, String status) {
		super();
		this.fes_No = fes_No;
		this.mem_Id = mem_Id;
		this.local_Code = local_Code;
		this.fes_Name = fes_Name;
		this.open_Date = open_Date;
		this.close_Date = close_Date;
		this.fes_Like = fes_Like;
		this.fes_Des = fes_Des;
		this.fes_Add = fes_Add;
		this.fes_Img = fes_Img;
		this.fes_Title = fes_Title;
		this.status = status;
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

	public String getLocal_Code() {
		return local_Code;
	}

	public void setLocal_Code(String local_Code) {
		this.local_Code = local_Code;
	}

	public String getFes_Name() {
		return fes_Name;
	}

	public void setFes_Name(String fes_Name) {
		this.fes_Name = fes_Name;
	}

	public Date getOpen_Date() {
		return open_Date;
	}

	public void setOpen_Date(Date open_Date) {
		this.open_Date = open_Date;
	}

	public Date getClose_Date() {
		return close_Date;
	}

	public void setClose_Date(Date close_Date) {
		this.close_Date = close_Date;
	}

	public int getFes_Like() {
		return fes_Like;
	}

	public void setFes_Like(int fes_Like) {
		this.fes_Like = fes_Like;
	}

	public String getFes_Des() {
		return fes_Des;
	}

	public void setFes_Des(String fes_Des) {
		this.fes_Des = fes_Des;
	}

	public String getFes_Add() {
		return fes_Add;
	}

	public void setFes_Add(String fes_Add) {
		this.fes_Add = fes_Add;
	}

	public String getFes_Img() {
		return fes_Img;
	}

	public void setFes_Img(String fes_Img) {
		this.fes_Img = fes_Img;
	}

	public String getFes_Title() {
		return fes_Title;
	}

	public void setFes_Title(String fes_Title) {
		this.fes_Title = fes_Title;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "festival [fes_No=" + fes_No + ", mem_Id=" + mem_Id + ", local_Code=" + local_Code + ", fes_Name="
				+ fes_Name + ", open_Date=" + open_Date + ", close_Date=" + close_Date + ", fes_Like=" + fes_Like
				+ ", fes_Des=" + fes_Des + ", fes_Add=" + fes_Add + ", fes_Img=" + fes_Img + ", fes_Title=" + fes_Title
				+ ", status=" + status + "]";
	}
	
}