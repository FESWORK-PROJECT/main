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
	        
		 } finally {
	     
			 sqlsession.close(); // 세션 닫기
	        
		 }
	        return slides;
		
	}

}
