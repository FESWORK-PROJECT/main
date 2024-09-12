package com.feswork.promo.Service;

import java.util.ArrayList;

import com.feswork.common.model.vo.PageInfo;
import com.feswork.promo.model.vo.promo;

public interface PromoServiceImpl {
	int selectListCount();
	ArrayList<promo> selectList(PageInfo pi);
	
	int insertBoard(promo p);
	
}
