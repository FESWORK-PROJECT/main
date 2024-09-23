package com.feswork.review.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.feswork.information.model.dao.InformationDao;
import com.feswork.review.model.dao.ReviewDao;
import com.feswork.review.model.vo.Review;
import com.feswork.template.MybatisTemplate;

public class ReviewService {

	private ReviewDao rDao = new ReviewDao();

	public ArrayList<Review> getBoardList(String festivalNo) {
		
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
			
		ArrayList<Review> rList = rDao.getBoardList(sqlSession, festivalNo);
		
		sqlSession.close();
		
		return rList;
	}

	public int insertReview(HashMap rv) {
		
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		int result = rDao.insertReview(sqlSession, rv);
		
		if(result > 0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		sqlSession.close();
		
		return result;
	}

	public int selectListCount(String festivalNo) {
		
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		int result = rDao.selectListCount(sqlSession, festivalNo);
		sqlSession.close();
		return result;
	}



}
