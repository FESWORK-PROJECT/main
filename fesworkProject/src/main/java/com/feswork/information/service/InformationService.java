package com.feswork.information.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.feswork.information.model.dao.InformationDao;
import com.feswork.information.model.vo.Information;
import com.feswork.template.MybatisTemplate;

public class InformationService {
		
	private InformationDao iDao = new InformationDao();

	public ArrayList<Information> getFestivalOrderByDate() {
		
		ArrayList<Information> fList = null;
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		fList = iDao.getFestivalOrderByDate(sqlSession);
		sqlSession.close();
		return fList;
		
		
	}
	public ArrayList<Information> sortLikeFestival() {
		ArrayList<Information> fList = null;
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		fList = iDao.sortLikeFestival(sqlSession);
		sqlSession.close();
		return fList;
	}
	

	  public ArrayList<Information> getSearchFestival(String searchArea, String
	  searchDate, String searchCate) {
	  
	  ArrayList<Information> sList = null;   
		  
	  SqlSession sqlSession = MybatisTemplate.getSqlSession();
	  
		HashMap data = new HashMap();
		data.put("searchArea", searchArea);
		data.put("searchDate", searchDate);
		data.put("searchCate", searchCate);
		
		sList = iDao.getSearchFestival(sqlSession ,data); 
	  
	
	
	   return sList;
	 
	  }
}
