package com.feswork.template;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisTemplate {

	public static SqlSession getSqlSession() {
		SqlSession sqlSession = null;
		
		String resource = "mybatis-config.xml";
		
		try {
			InputStream stream = Resources.getResourceAsStream(resource);
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(stream);
			sqlSession = ssf.openSession(false);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return sqlSession;		
	}
}
