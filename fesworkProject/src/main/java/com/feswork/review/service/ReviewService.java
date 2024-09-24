package com.feswork.review.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.feswork.common.model.vo.PageInfo;
import com.feswork.information.model.dao.InformationDao;
import com.feswork.review.model.dao.ReviewDao;
import com.feswork.review.model.vo.Review;
import com.feswork.template.MybatisTemplate;

public class ReviewService {

	private  ReviewDao rDao = new ReviewDao();

	public ArrayList<Review> getBoardList(String festivalNo, PageInfo pi) {
		
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
			
		ArrayList<Review> rList = rDao.getBoardList(sqlSession, festivalNo,  pi);
		
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

	public Review reviewDetail(String rvNo) {
		Review rSelct = null;
		
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		
		rSelct = rDao.reviewDetail(sqlSession, rvNo);
		
		sqlSession.close();
		
		return  rSelct;
	}

	public int updateReview(HashMap hMap) {
		
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		int result = rDao.updateReview(sqlSession, hMap);
		
		if(result > 0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		sqlSession.close();
		
		return result;
	}

	public int deletePost(String rvNo) {
		
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		
		int result = rDao.deletePost(sqlSession, rvNo);
		
		if(result > 0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		sqlSession.close();
		
		return result;
		
		
	}

	public ArrayList<Review> searchByWriter(HashMap noKeyword) {
		
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		
		ArrayList<Review> rList = rDao.searchByWriter(sqlSession, noKeyword);
		
		sqlSession.close();
		
		return rList;
	}

	public ArrayList<Review> searchByTitle(HashMap noKeyword) {
		
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		
		
		
		System.out.println("확인용 ------1" + noKeyword.get("festivalNo"));
		ArrayList<Review> rList = rDao.searchByTitle(sqlSession, noKeyword);
		sqlSession.close();
		return rList;
	}

	public ArrayList<Review> searchByContent(HashMap noKeyword) {
		
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		ArrayList<Review> rList = rDao.searchByContent(sqlSession, noKeyword);
		sqlSession.close();
		return rList;
	}



}
