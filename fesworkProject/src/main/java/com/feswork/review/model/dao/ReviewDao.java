package com.feswork.review.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.feswork.review.model.vo.Review;

public class ReviewDao {

	public ArrayList<Review> getBoardList(SqlSession sqlSession, String festivalNo) {
		
		return (ArrayList)sqlSession.selectList("reviewMapper.getBoardList",festivalNo);
		
	}

	public int insertReview(SqlSession sqlSession, HashMap rv) {
		
		return sqlSession.insert("reviewMapper.insertReview",rv);
		
	}

	public int selectListCount(SqlSession sqlSession, String festivalNo) {
		
		return sqlSession.selectOne("reviewMapper.selectListCount",festivalNo);
	}
	
	
	

}
