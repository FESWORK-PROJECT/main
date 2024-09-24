package com.feswork.slide.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.feswork.slide.model.dao.SlideDao;
import com.feswork.slide.model.vo.Slide;
import com.feswork.template.MybatisTemplate;

public class slideService {

	private SlideDao slideDao = new SlideDao(); // SlideDao 인스턴스 생성

	 public static List<Slide> getAllSlides() {
	        
		 SqlSession sqlsession = MybatisTemplate.getSqlSession();
	     
		 List<Slide> slides = null;
	     
		 try {
	     
			 slides = SlideDao.getAllSlides(sqlsession); // DAO에서 데이터를 가져옴
			 System.out.println("서비스에서반환받은"+slides);
			 
		 } finally {
	     
			 sqlsession.close(); // 세션 닫기
	        
		 }
	        return slides;
		
	}

	public static List<Slide> selectTopFestivals() {
		SqlSession sqlsession = MybatisTemplate.getSqlSession();
	     
		 List<Slide> topLike = null;
	     
		 try {
	     
			 topLike = SlideDao.selectTopFestivals(sqlsession); // DAO에서 데이터를 가져옴
			 System.out.println("서비스에서반환받은"+topLike);
	        
		 } finally {
	     
			 sqlsession.close(); // 세션 닫기
	        
		 }
	        return topLike;
	}

	public static List<Slide> selectOpenFestivals() {
		SqlSession sqlsession = MybatisTemplate.getSqlSession();
	     
		 List<Slide> open = null;
	     
		 try {
	     
			 open = SlideDao.selectOpenFestivals(sqlsession); // DAO에서 데이터를 가져옴
			 System.out.println("서비스에서반환받은"+open);
	        
		 } finally {
	     
			 sqlsession.close(); // 세션 닫기
	        
		 }
	        return open;
	}

	public static List<Slide> selectPreFestivals() {
		SqlSession sqlsession = MybatisTemplate.getSqlSession();
	     
		 List<Slide> pre = null;
	     
		 try {
	     
			 pre = SlideDao.selectPreFestivals(sqlsession); // DAO에서 데이터를 가져옴
			 System.out.println("서비스에서반환받은"+pre);
	        
		 } finally {
	     
			 sqlsession.close(); // 세션 닫기
	        
		 }
	        return pre;
	}
	
	public static List<Slide> getFestivalByLocalCode(String localCode) {
		SqlSession sqlsession = MybatisTemplate.getSqlSession();
	     
		 List<Slide> land = null;
	     
		 try {
	     
			 land = SlideDao.getFestivalByLocalCode(sqlsession, localCode); // DAO에서 데이터를 가져옴
			 System.out.println("서비스에서반환받은"+land);
	        
		 } finally {
	     
			 sqlsession.close(); // 세션 닫기
	        
		 }
	        return land;
	        
	}
}
