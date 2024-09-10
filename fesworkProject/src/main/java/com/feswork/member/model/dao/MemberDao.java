package com.feswork.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.feswork.member.model.vo.Member;

public class MemberDao {

	public Member loginMember(SqlSession sqlSession, Member m) {
		Member loginMember = null;
		//System.out.println("dao로받은m:"+m);
		loginMember = sqlSession.selectOne("memberMapper.loginMember", m);
		
		//System.out.println("DB갔다온 loginMember:"+loginMember);
		return loginMember;
	}

	public int signupMember(SqlSession sqlSession, Member m) {
		
		return sqlSession.insert("memberMapper.insertMember", m);
	}

}
