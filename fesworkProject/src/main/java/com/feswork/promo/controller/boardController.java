package com.feswork.promo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feswork.promo.Service.FestivalService;
import com.feswork.promo.model.vo.Festival;

/**
 * Servlet implementation class boardController
 */
@WebServlet("/festivalList")
public class boardController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private FestivalService pService = new FestivalService(); // FestivalService 객체
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public boardController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // FestivalService를 이용해 축제 목록 가져오기
        List<Festival> festivalList = pService.getFestivalList();
        
        if (festivalList != null) {
            request.setAttribute("festivalList", festivalList); // JSP로 데이터 전달
        } else {
            System.out.println("축제 목록 데이터가 없습니다.");
        }
        
        // JSP로 포워딩
        request.getRequestDispatcher("/views/promo/promo.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}