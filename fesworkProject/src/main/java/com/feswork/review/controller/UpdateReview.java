package com.feswork.review.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feswork.review.service.ReviewService;

/**
 * Servlet implementation class UpdateReview
 */
@WebServlet("/updateReview.do")
public class UpdateReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateReview() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); 
		response.setContentType("text/html; charset=UTF-8");
		String rvNo = request.getParameter("rvNo");
		String rvTitle = request.getParameter("rvTitle");
		String rvContent = request.getParameter("rvContent");
		String festivalNo = request.getParameter("festivalNo");
		HttpSession session = request.getSession();
		
		HashMap hMap = new HashMap();
		
		hMap.put("rvNo", rvNo);
		hMap.put("rvTitle", rvTitle);
		hMap.put("rvContent", rvContent);
		// hMap.put("festivalNo", festivalNo);
		
		
		int result = new ReviewService().updateReview(hMap);
		
		if(result > 0) {
			request.setAttribute("hMap", hMap);
			
			session.setAttribute("alertMsg", "로그인성공");
			
		    String redirectUrl = "boardList?festivalNo=" + festivalNo + "&cpage=1";
		    response.sendRedirect(redirectUrl);
		}
		
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
