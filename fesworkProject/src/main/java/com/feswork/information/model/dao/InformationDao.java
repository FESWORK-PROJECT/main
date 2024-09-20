package com.feswork.information.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.feswork.information.model.vo.Information;

public class InformationDao {

	public ArrayList<Information> getFestivalOrderByDate(SqlSession sqlSession) {
		
		return (ArrayList)sqlSession.selectList("informationMapper.selectFestivalsOrderByDate");
	}



	public ArrayList<Information> sortLikeFestival(SqlSession sqlSession) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSession.selectList("informationMapper.selectSortLike");
	
	}



	public ArrayList<Information> getSearchFestival(SqlSession sqlSession, HashMap data) {
		
		return (ArrayList)sqlSession.selectList("informationMapper.getSearchFestival", data);
	}



	public ArrayList<Information> getLikeTopFestival(SqlSession sqlSession) {
	
		return (ArrayList)sqlSession.selectList("informationMapper.getLikeTopFestival");
		
	}



	public Information selectDetailFestival(SqlSession sqlSession, String festivalNo) {
	
		return sqlSession.selectOne("informationMapper.selectDetailFestival", festivalNo);
	}



	public ArrayList<Information> getFestivalSearch(SqlSession sqlSession, String festivalName) {
		
		return (ArrayList)sqlSession.selectList("informationMapper.getFestivalSearch", festivalName);
	}



	public int toggleLike(SqlSession sqlSession, HashMap lMap) {
		
		return sqlSession.update("informationMapper.toggleLike",lMap);
		
	}











}




	

