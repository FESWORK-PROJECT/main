package com.feswork.slide.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.feswork.slide.model.vo.Slide;

public class SlideDao {

	public static List<Slide> getAllSlides(SqlSession sqlsession) {
		 return sqlsession.selectList("slideMapper.getAllSlides");
	}

	public static List<Slide> selectTopFestivals(SqlSession sqlsession) {
		List<Slide> topLike = null;

	    try {
	        topLike = sqlsession.selectList("slideMapper.selectTopFestivals");
	        System.out.println("mapper에서 반환받은: " + topLike);
	    } catch (Exception e) {
	        e.printStackTrace(); // 예외 발생 시 로그 출력
	    }

	    return topLike;
	}

}
