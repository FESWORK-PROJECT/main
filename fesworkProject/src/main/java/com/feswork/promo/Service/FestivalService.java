package com.feswork.promo.Service;

import java.util.List;
import com.feswork.promo.model.dao.FestivalDao;
import com.feswork.promo.model.vo.Festival;

public class FestivalService {

    private FestivalDao festivalDao = new FestivalDao();

    // 축제 리스트를 가져오는 서비스 메서드
    public List<Festival> getFestivalList() {
        return festivalDao.selectAllFestivals();
    }
    
    public int insertFestival(Festival festival) {
        return festivalDao.insertFestival(festival);
    }
    
}