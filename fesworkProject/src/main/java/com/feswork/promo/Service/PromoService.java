package com.feswork.promo.Service;

import java.util.ArrayList;

import com.feswork.common.model.vo.PageInfo;
import com.feswork.promo.model.vo.festival;

public interface PromoService {
	int selectListCount();
	ArrayList<festival> selectList(PageInfo pi);
	
	/* 게시글 작성 --> C (insert) */
	int insertBoard(festival p);
	
	/* 게시글 상세 조회 --> R(select) + U (update) */
	int increaseCount(int fes_No);		// 조회수 증가
	festival selectBoard(int fes_No);
	
	/* 게시글 수정 --> U (update) */
	int updateBoard(festival p);
	
	/* 게시글 삭제 --> U (update) */
	int deleteBoard(int fes_No);

}
