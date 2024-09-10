package com.feswork.member.model.vo;

import java.sql.Date;

public class Member {
	private int memberNo;
	private String memberId;
	private String memberPwd;
	private String email;
	private String memberName;
	private String birth;
	private String gender;
	private String phone;
	private String memberLevel;
	private String signupDate;
	private String resignDate;
	
	
	public Member() {
		
	}

	public Member(int memberNo, String memberId, String memberPwd, String email, String memberName, String birth,
			String gender, String phone, String memberLevel, String signupDate, String resignDate) {
		super();
		this.memberNo = memberNo;
		this.memberId = memberId;
		this.memberPwd = memberPwd;
		this.email = email;
		this.memberName = memberName;
		this.birth = birth;
		this.gender = gender;
		this.phone = phone;
		this.memberLevel = memberLevel;
		this.signupDate = signupDate;
		this.resignDate = resignDate;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPwd() {
		return memberPwd;
	}

	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMemberLevel() {
		return memberLevel;
	}

	public void setMemberLevel(String memberLevel) {
		this.memberLevel = memberLevel;
	}

	public String getSignupDate() {
		return signupDate;
	}

	public void setSignupDate(String signupDate) {
		this.signupDate = signupDate;
	}

	public String getResignDate() {
		return resignDate;
	}

	public void setResignDate(String resignDate) {
		this.resignDate = resignDate;
	}

	@Override
	public String toString() {
		return "Member [memberNo=" + memberNo + ", memberId=" + memberId + ", memberPwd=" + memberPwd + ", email="
				+ email + ", memberName=" + memberName + ", birth=" + birth + ", gender=" + gender + ", phone=" + phone
				+ ", memberLevel=" + memberLevel + ", signupDate=" + signupDate + ", resignDate=" + resignDate + "]";
	}


	

	
}
