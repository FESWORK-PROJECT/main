package com.feswork.slide.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.feswork.slide.model.vo.Slide;

public class SlideDao {

	public static List<Slide> getAllSlides(SqlSession sqlsession) {
		 List<Slide> slides = null;
		 
		 try {
			 slides = sqlsession.selectList("slideMapper.getAllSlides");
			 System.out.println("mapper에서 반환받은: " + slides);
		 } catch (Exception e) {
			 e.printStackTrace();
		 }
		 
		 return slides;
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

	public static List<Slide> selectOpenFestivals(SqlSession sqlsession) {
		List<Slide> open = null;

	    try {
	        open = sqlsession.selectList("slideMapper.openingFestivals");
	        System.out.println("mapper에서 반환받은: " + open);
	    } catch (Exception e) {
	        e.printStackTrace(); // 예외 발생 시 로그 출력
	    }

	    return open;
	}

	public static List<Slide> selectPreFestivals(SqlSession sqlsession) {
		List<Slide> pre = null;

	    try {
	        pre = sqlsession.selectList("slideMapper.preFestivals");
	        System.out.println("mapper에서 반환받은: " + pre);
	    } catch (Exception e) {
	        e.printStackTrace(); // 예외 발생 시 로그 출력
	    }

	    return pre;
	}
	
	public static List<Slide> getFestivalByLocalCode(SqlSession sqlsession, String localCode){
		List<Slide> land = null;

	    try {
	        land = sqlsession.selectList("slideMapper.getFestivalByLocalCode", localCode);
	        System.out.println("mapper에서 반환받은: " + land);
	    } catch (Exception e) {
	        e.printStackTrace(); // 예외 발생 시 로그 출력
	    }

	    return land;
	}
}
