package com.feswork.information.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

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





}




	

