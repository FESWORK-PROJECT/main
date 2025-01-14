package com.feswork.review.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feswork.common.model.vo.PageInfo;
import com.feswork.common.template.Pagination;
import com.feswork.information.model.vo.Information;
import com.feswork.information.service.InformationService;
import com.feswork.review.model.vo.Review;
import com.feswork.review.service.ReviewService;

/**
 * Servlet implementation class ReviewController
 */
@WebServlet("/boardList")
public class ReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewController() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String festivalNo = request.getParameter("festivalNo");
		
		String strCpage = request.getParameter("cpage");
		int cpage = 1;
		
		
		//
		if (strCpage != null) {
			cpage = Integer.parseInt(strCpage);
			request.setAttribute("cpage", cpage);
		}    
		
		//전체 게시글 수 조회 
		int listCount = new ReviewService().selectListCount(festivalNo);
		
		// 게시글 정보 불러오기 
		PageInfo pi = Pagination.getPageInfo(listCount, cpage, 5, 5);
		
		ArrayList<Review> rList = new ReviewService().getBoardList(festivalNo, pi);
		
		
		request.setAttribute("pi", pi);
		    
		    System.out.println("festivalNo: " + festivalNo); // 디버깅: festivalNo 출력
		    System.out.println("cpage: " + cpage); // 수정된 부분: strCpage 대신 cpage 출력
		    System.out.println("strCpage: " + strCpage); // strCpage의 값을 확인
		    
		    request.setAttribute("pi", pi);
		    
		    if (rList != null) {
		        request.setAttribute("rList", rList); 
		        request.setAttribute("festivalNo", festivalNo);
		        request.getRequestDispatcher("views/information/boardList.jsp").forward(request, response);
		    } else {
		        request.setAttribute("errorMsg", "요청이 실패했습니다");
		        request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		    }    
	}
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}


