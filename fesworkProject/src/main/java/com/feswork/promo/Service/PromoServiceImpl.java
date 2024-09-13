package com.feswork.promo.Service;

import java.util.ArrayList;

import com.feswork.common.model.vo.PageInfo;
import com.feswork.promo.model.dao.PromoDao;
import com.feswork.promo.model.vo.festival;

public class PromoServiceImpl implements PromoService {
	private PromoDao pDao = new PromoDao();

	@Override
	public int selectListCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ArrayList<festival> selectList(PageInfo pi) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertBoard(festival p) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int increaseCount(int fes_No) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public festival selectBoard(int fes_No) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateBoard(festival p) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteBoard(int fes_No) {
		// TODO Auto-generated method stub
		return 0;
	}



	
}
