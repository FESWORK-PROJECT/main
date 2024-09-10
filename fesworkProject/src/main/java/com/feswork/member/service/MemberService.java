package com.feswork.member.service;

import org.apache.ibatis.session.SqlSession;

import com.feswork.member.model.dao.MemberDao;
import com.feswork.member.model.vo.Member;
import com.feswork.template.MybatisTemplate;

public class MemberService {

	private MemberDao mDao = new MemberDao();
	
	public Member loginMember(Member m) {
		System.out.println("service가 받은 m:"+m);
		
		Member loginMember = null;
		
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		loginMember = mDao.loginMember(sqlSession, m);
		
		sqlSession.close();
		
		System.out.println("service가 받은 loginMember:"+loginMember);
		
		return loginMember;
	}



}
