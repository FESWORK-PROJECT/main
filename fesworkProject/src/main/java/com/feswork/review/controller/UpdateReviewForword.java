package com.feswork.review.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feswork.review.model.vo.Review;
import com.feswork.review.service.ReviewService;

/**
 * Servlet implementation class UpdateReview
 */
@WebServlet("/updateReview1")
public class UpdateReviewForword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateReviewForword() {
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
		String rvNo= request.getParameter("rvNo");
		request.setAttribute("rvNo", rvNo);
		Review rv = new ReviewService().reviewDetail(rvNo);
		
		if(rv != null) {
		request.setAttribute("rv", rv);
		request.getRequestDispatcher("views/information/updateReview.jsp").forward(request, response);	
		
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
