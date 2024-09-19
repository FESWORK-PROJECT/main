package com.feswork.information.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feswork.information.service.InformationService;

/**
 * Servlet implementation class LikeFestival
 */
@WebServlet("/likeFestival")
public class LikeFestival extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LikeFestival() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String festivalNo = request.getParameter("festivalNo");
		 boolean isLiked = Boolean.parseBoolean(request.getParameter("isLiked"));
		
		 int result  = new InformationService().toggleLike(festivalNo, isLiked);
		 response.setContentType("text/plain");
		 
		 
		 System.out.println("festivalNo: " + festivalNo);
		 System.out.println("isLiked: " + isLiked);
		 
		   response.setContentType("application/json");
		   PrintWriter out = response.getWriter();
		    
		    if (result > 0) {
		        out.print("{\"success\": true}");
		    } else {
		        out.print("{\"success\": false}");
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