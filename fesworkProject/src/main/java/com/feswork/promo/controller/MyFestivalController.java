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
 * Servlet implementation class MyFestivalController
 */
@WebServlet("/MyFestival")
public class MyFestivalController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FestivalService pService = new FestivalService();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyFestivalController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memId = (String) request.getSession().getAttribute("memId");  // 세션에서 사용자 ID를 가져옴
	    if (memId != null) {
	        List<Festival> MyFestival = pService.getMyFestival(memId);
	        if(MyFestival != null) {
	            request.setAttribute("MyFestival", MyFestival);
	            System.out.println("나오나요?");
	        } else {
	            System.out.println("축제 목록 데이터가 없습니다.");
	        }
	    } else {
	        System.out.println("사용자 ID가 없습니다.");
	    }
	    request.getRequestDispatcher("/views/promo/writecheck.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
