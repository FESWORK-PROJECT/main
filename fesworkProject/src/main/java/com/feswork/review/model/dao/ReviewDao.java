package com.feswork.review.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.feswork.common.model.vo.PageInfo;
import com.feswork.review.model.vo.Review;

public class ReviewDao {

	public ArrayList<Review> getBoardList(SqlSession sqlSession, String festivalNo, PageInfo pi) {

		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList) sqlSession.selectList("reviewMapper.getBoardList", festivalNo, rowBounds);
	}

	public int insertReview(SqlSession sqlSession, HashMap rv) {

		return sqlSession.insert("reviewMapper.insertReview", rv);
	}

	public int selectListCount(SqlSession sqlSession, String festivalNo) {

		return sqlSession.selectOne("reviewMapper.selectListCount", festivalNo);
	}

	public Review reviewDetail(SqlSession sqlSession, String rvNo) {
		 return sqlSession.selectOne("reviewMapper.reviewDetail", rvNo);
	}

	public int updateReview(SqlSession sqlSession, HashMap hMap) {
		return sqlSession.update("reviewMapper.updateReview", hMap);
	}

	public int deletePost(SqlSession sqlSession, String rvNo) {
		return sqlSession.update("reviewMapper.deletePost", rvNo);
	}

	public ArrayList<Review> searchByWriter(SqlSession sqlSession, HashMap noKeyword) {
		return (ArrayList)sqlSession.selectList("reviewMapper.searchByWriter", noKeyword);
	}

	public ArrayList<Review> searchByTitle(SqlSession sqlSession, HashMap noKeyword) {
		System.out.println("확인용 ------1" + noKeyword.get("festivalNo"));
		return (ArrayList)sqlSession.selectList("reviewMapper.searchByTitle", noKeyword);
	}

	public ArrayList<Review> searchByContent(SqlSession sqlSession, HashMap noKeyword) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("reviewMapper.searchByContent", noKeyword);
	}
	  
	 

}
