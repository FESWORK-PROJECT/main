package com.feswork.promo.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feswork.promo.Service.FestivalService;
import com.feswork.promo.model.vo.Festival;

/**
 * Servlet implementation class FestivalwriteController
 */
@WebServlet("/festivalwrite")
public class FestivalwriteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FestivalwriteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

	    // 폼에서 전송된 데이터 받기
	    String festivalName = request.getParameter("festivalName");
	    String memId = request.getParameter("memId");
	    String localCode = request.getParameter("localCode");
	    String openDate = request.getParameter("openDate");
	    String closeDate = request.getParameter("closeDate");
	    int fesLike = Integer.parseInt(request.getParameter("fesLike"));
	    String fesAdd = request.getParameter("fesAdd");
	    String fesImg = request.getParameter("fesImg");
	    String fesTitle = request.getParameter("fesTitle");
	    String status = request.getParameter("status");
	    String fesDescription = request.getParameter("fesDescription");

	    // Festival 객체에 데이터 설정
	    Festival festival = new Festival();
	    festival.setFestivalName(festivalName);
	    festival.setMemId(memId);
	    festival.setLocalCode(localCode);
	    festival.setOpenDate(java.sql.Date.valueOf(openDate));  // String을 Date로 변환
	    festival.setCloseDate(java.sql.Date.valueOf(closeDate));
	    festival.setFesLike(fesLike);
	    festival.setFesAdd(fesAdd);
	    festival.setFesImg(fesImg);
	    festival.setFesTitle(fesTitle);
	    festival.setStatus(status);
	    festival.setFesDescription(fesDescription);

	    // FestivalService 객체를 생성하여 메서드 호출
	    FestivalService festivalService = new FestivalService();
	    int result = festivalService.insertFestival(festival);  // 객체를 통해 메서드 호출

	    // 결과에 따른 처리
	    if (result > 0) {
	        response.sendRedirect("/festival/list");  // 성공 시 축제 목록 페이지로 이동
	    } else {
	        request.setAttribute("errorMessage", "글 작성에 실패했습니다.");
	        request.getRequestDispatcher("/festival/write.jsp").forward(request, response);  // 실패 시 작성 페이지로 이동
	    }
	}
}
