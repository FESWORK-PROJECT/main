package com.feswork.survey.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.feswork.information.model.vo.Information;
import com.feswork.survey.model.dao.SurveyDao;
import com.feswork.survey.model.dto.SurveyInfo;
import com.feswork.template.MybatisTemplate;

public class SurveyService {
	private SurveyDao sDao = new SurveyDao();
	
	public ArrayList<Information> selectList(SurveyInfo surInfo) {
		SqlSession sqlSession = MybatisTemplate.getSqlSession();
		ArrayList<Information> list = sDao.selectList(sqlSession, surInfo);
		sqlSession.close();
		return list;
	}
}
