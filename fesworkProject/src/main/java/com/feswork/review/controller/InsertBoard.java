package com.feswork.review.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feswork.review.model.vo.Review;
import com.feswork.review.service.ReviewService;

/**
 * Servlet implementation class InsertBoard
 */
@WebServlet("/insert")
public class InsertBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertBoard() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String rvTitle = request.getParameter("rvTitle");
		String rvContent = request.getParameter("rvContent");
		String rvImg = request.getParameter("rvImg");
		
		HashMap rv = new HashMap();
		
		rv.put("rvTitle", rvTitle);
		rv.put("rvContent", rvContent);
		rv.put("rvImg", rvImg);
		
		
		int result = new ReviewService().insertReview(rv);
		
		if(result > 0){
			
			request.setAttribute("rv", rv);
			
			
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
