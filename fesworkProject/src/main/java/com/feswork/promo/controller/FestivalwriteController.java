package com.feswork.promo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feswork.common.template.MyFileRenamePolicy;
import com.feswork.promo.Service.FestivalService;
import com.feswork.promo.model.vo.Festival;
import com.oreilly.servlet.MultipartRequest;

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

		int maxSize = 10 * 1024 * 1024; 	// 10mbyte
		String savePath = request.getSession().getServletContext().getRealPath("/resources/upfiles/");
		
		MultipartRequest multipart = new MultipartRequest(request
				, savePath
				, maxSize
				, "UTF-8"
				, new MyFileRenamePolicy());
		
		
		
	    // 폼에서 전송된 데이터 받기
	    String festivalName = multipart.getParameter("festivalName");
	    String memId = multipart.getParameter("memId");
	    String localCode = multipart.getParameter("localCode");
	    String openDate = multipart.getParameter("openDate");
	    String closeDate = multipart.getParameter("closeDate");
	    String fesAdd = multipart.getParameter("fesAdd");
	    String fesImg = multipart.getFilesystemName("fesImg");
	    String fesDescription = multipart.getParameter("fesDescription");

	    System.out.println("받아온memid:"+memId);
	    // Festival 객체에 데이터 설정
	    Festival festival = new Festival();
	    festival.setFestivalName(festivalName);
	    festival.setMemId(memId);
	    festival.setLocalCode(localCode);

	    // 날짜 값이 null 또는 빈 문자열인지 확인 후 변환
	    if (openDate != null && !openDate.isEmpty()) {
	        festival.setOpenDate(java.sql.Date.valueOf(openDate));
	    }
	    if (closeDate != null && !closeDate.isEmpty()) {
	        festival.setCloseDate(java.sql.Date.valueOf(closeDate));
	    }

	    festival.setFesAdd(fesAdd);
	    
	    festival.setFesImg("resources/upfiles/"+fesImg);
	    festival.setFesDescription(fesDescription);
	    
	    System.out.println(festival);

	    // FestivalService 객체를 생성하여 메서드 호출
	    FestivalService festivalService = new FestivalService();
	    int result = festivalService.insertFestival(festival);  // 객체를 통해 메서드 호출

	    // 결과에 따른 처리
	    if (result > 0) {
	    	HttpSession session = request.getSession();
	    	session.setAttribute("alertMsg", "글 작성에 성공했습니다.");
	    	response.sendRedirect(request.getContextPath());
	        //response.sendRedirect("/festivalList");  // 성공 시 축제 목록 페이지로 이동
	    } else {
	    	request.setAttribute("errorMessage", "글 작성에 실패했습니다.");
	        request.getRequestDispatcher("/writecontext").forward(request, response);  // 실패 시 작성 페이지로 이동
	    }
	}
}
