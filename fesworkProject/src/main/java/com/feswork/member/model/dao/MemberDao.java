package com.feswork.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.feswork.member.model.vo.Member;

public class MemberDao {
    public Member loginMember(SqlSession sqlSession, Member m) {
        return sqlSession.selectOne("memberMapper.loginMember", m);
    }

    public int insertMember(SqlSession sqlSession, Member m) {
        return sqlSession.insert("memberMapper.insertMember", m);
    }

    public int idCheck(SqlSession sqlSession, String id) {
        return sqlSession.selectOne("memberMapper.idCheck", id);
    }
}
