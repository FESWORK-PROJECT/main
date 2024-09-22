package com.feswork.promo.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.feswork.promo.model.vo.Festival;
import com.feswork.template.MybatisTemplate;

public class FestivalDao {
    
    // 축제 리스트를 DB에서 가져오는 메서드
	public List<Festival> selectAllFestivals() {
	    List<Festival> list = null;
	    try (SqlSession session = MybatisTemplate.getSqlSession()) {
	        list = session.selectList("festivalMapper.firstboard");
	        System.out.println("조회된 축제 목록: " + list);  // 데이터가 조회되는지 확인
	    } catch (Exception e) {
	        e.printStackTrace();  // 오류를 콘솔에 출력
	    }
	    return list;
	}

	public int insertFestival(Festival festival) {
		int result = 0;
        try (SqlSession session = MybatisTemplate.getSqlSession()) {
            result = session.insert("festivalMapper.insertBoard", festival);
            if (result > 0) {
                session.commit();  // 성공 시 commit
            } else {
                session.rollback();  // 실패 시 rollback
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

<<<<<<< HEAD
=======
	public List<Festival> selectMyFestivals(String memId) {
	    List<Festival> list = null;
	    try(SqlSession session = MybatisTemplate.getSqlSession()) {
	        list = session.selectList("festivalMapper.selectBoard", memId);  // memId를 전달
	        System.out.println("조회된 축제 목록: " + list);
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	    return list;
	}
	
	

>>>>>>> 0d81bc0 (mybatis-config.xml promo-mapper 파일 코드 삽입 typeAlias,mapper resource)
}
