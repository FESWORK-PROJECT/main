package com.feswork.slide.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.feswork.slide.model.vo.Slide;

public class SlideDao {

	public static List<Slide> getAllSlides(SqlSession sqlsession) {
		 return sqlsession.selectList("slideMapper.getAllSlides");
	}

}
