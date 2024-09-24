package com.feswork.review.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feswork.review.service.ReviewService;

/**
 * Servlet implementation class DeletePost
 */
@WebServlet("/deletePost.do")
public class DeletePost extends HttpServlet {
	private static final long serialVersionUID = 1L;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletePost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String rvNo = request.getParameter("rvNo");
		String festivalNo = request.getParameter("festivalNo");
		
		System.out.println(rvNo);
		int result = new ReviewService().deletePost(rvNo);
		
		if(result > 0){
			// request.getRequestDispatcher(festivalNo);
			session.setAttribute("alertMsg", "삭제 성공했습니다.");
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
