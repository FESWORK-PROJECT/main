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

	public int signupMember(Member m) {
		int result = 0;
		
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		
		result = mDao.signupMember(sqlSession, m);
		
		if(result>0) {
			sqlSession.commit();
		}
		
		sqlSession.close();
		
		return result;
	}

	public int idCheck(String memberId) {
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		
		int count = mDao.idCheck(sqlSession, memberId);
		
		sqlSession.close();
		
		return count;
	}

	public Member updateMember(Member m) {
		Member updateMember = null;
		SqlSession sqlSession = MybatisTemplate.getSqlSession();

		System.out.println("서비스가 받은 m:"+m);
		int result = mDao.updateMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
			
			updateMember = mDao.selectUpdateMember(sqlSession, m);
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		System.out.println("서비스가 받은 updateMember:"+updateMember);
		
		return updateMember;
	}

	public int resignMember(Member m) {
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		
		int result = mDao.resignMember(sqlSession, m);
		
		if(result >0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	public int modifyPwd(String memberId, String memberPwd, String newPwd) {
		
		SqlSession sqlSession = MybatisTemplate.getSqlSession();

		int result = mDao.modifyPwd(sqlSession, memberId, memberPwd, newPwd);
		
		if(result>0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}



}
