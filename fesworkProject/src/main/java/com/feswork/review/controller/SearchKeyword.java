package com.feswork.review.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feswork.review.model.vo.Review;
import com.feswork.review.service.ReviewService;

/**
 * Servlet implementation class SearchKeyword
 */
@WebServlet("/searchServlet")
public class SearchKeyword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchKeyword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		request.setCharacterEncoding("UTF-8"); 
		response.setContentType("text/html; charset=UTF-8");
		
		String condition = request.getParameter("condition");
		String festivalNo = request.getParameter("festivalNo");
		
		String keyword = request.getParameter("keyword");
		
		ArrayList<Review> searchResults = new ArrayList<>();
		
		HashMap noKeyword = new HashMap();
		
		noKeyword.put("keyword", keyword);
		noKeyword.put("festivalNo", festivalNo);
		
		System.out.println(keyword);
		System.out.println("확인용 ------1" + festivalNo);
		
		
	    switch (condition) {
         case "writer":
             searchResults = new ReviewService().searchByWriter(noKeyword);
             break;
         case "title":
             searchResults = new ReviewService().searchByTitle(noKeyword);
             break;
         case "content":
             searchResults = new ReviewService().searchByContent(noKeyword);
             break;   
     }
    	request.setAttribute("festivalNo", festivalNo);	
    	
	    if(searchResults != null) {
	    	request.setAttribute("rList", searchResults);
	        session.setAttribute("alertMsg", "조회결과가 있습니다.");
	        request.getRequestDispatcher("views/information/boardList.jsp").forward(request, response);
	       
	     //   String redirectUrl = "boardList?festivalNo=" + festivalNo + "&cpage=1";
		  // response.sendRedirect(redirectUrl);
	        
	    }else {
	    	session.setAttribute("alertMsg", "조회결과가 없습니다..");
	        request.getRequestDispatcher("views/information/boardList.jsp").forward(request, response);
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
