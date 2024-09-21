package com.feswork.survey.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.feswork.information.model.vo.Information;
import com.feswork.survey.model.dto.SurveyInfo;

public class SurveyDao {

	public ArrayList<Information> selectList(SqlSession sqlSession, SurveyInfo surInfo) {
		System.out.println(surInfo);
		return (ArrayList)sqlSession.selectList("recommendedMapper.getRecommendedFestivals", surInfo);
	}

}
