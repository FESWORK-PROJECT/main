package com.feswork.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.feswork.member.model.vo.Member;

public class MemberDao {

	public Member loginMember(SqlSession sqlSession, Member m) {
		Member loginMember = null;
		//System.out.println("dao로받은m:"+m);
		loginMember = sqlSession.selectOne("memberMapper.loginMember", m);
		
		System.out.println("DB갔다온 loginMember:"+loginMember);
		return loginMember;
	}

	public int signupMember(SqlSession sqlSession, Member m) {
		
		return sqlSession.insert("memberMapper.insertMember", m);
	}

	public int idCheck(SqlSession sqlSession, String memberId) {
		int count = sqlSession.selectOne("memberMapper.idCheck", memberId);
		
		return count;
		
	}

	public int updateMember(SqlSession sqlSession, Member m) {
		
		System.out.println("dao가받은 m"+m);
		int result = sqlSession.update("memberMapper.updateMember", m);
		
		return result;
	}

	public Member selectUpdateMember(SqlSession sqlSession, Member m) {
		
		return sqlSession.selectOne("memberMapper.modifiedMember", m);
	}

	public int resignMember(SqlSession sqlSession, Member m) {
		
		int result = sqlSession.update("memberMapper.resignMember", m);
		
		return result;
	}

	public int modifyPwd(SqlSession sqlSession, String memberId, String memberPwd, String newPwd) {
		
		int result = sqlSession.update("member-Mapper.modifyPwd", memberId, memberPwd, newPwd);
		
		return result;
	}

	
}
