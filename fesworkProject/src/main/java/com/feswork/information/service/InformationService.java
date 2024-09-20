package com.feswork.information.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

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
	  
	
	   sqlSession.close();
		
	   return sList;
	 
	  }
	
	  public ArrayList<Information> getLikeTopFestival() {
		
		  ArrayList<Information> lList = null;
		 
		  SqlSession sqlSession = MybatisTemplate.getSqlSession();
		  lList = iDao.getLikeTopFestival(sqlSession);
		  
		sqlSession.close();
		return lList;
	}
	public Information selectDetailFestival(String festivalNo) {
		
		Information iBoard = null;
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		
		iBoard = iDao.selectDetailFestival(sqlSession, festivalNo);
		
		sqlSession.close();
		return iBoard;
	}
	public ArrayList<Information> getFestivalSearch(String festivalName) {
		
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		ArrayList<Information> lList = null;
		lList = iDao.getFestivalSearch(sqlSession, festivalName);
		
		sqlSession.close();
		
		return lList;
	}
	public int toggleLike(String festivalNo, boolean isLiked) {
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		int result = 0;
		
		HashMap lMap = new HashMap<>();
		
		lMap.put("festivalNo", festivalNo);
		lMap.put("isLiked", isLiked ? 1 : -1);
		
		result = iDao.toggleLike(sqlSession, lMap);
		
		if(result > 0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}
}
