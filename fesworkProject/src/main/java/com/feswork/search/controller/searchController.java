package com.feswork.search.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feswork.search.service.FestivalService;
import com.feswork.search.service.HttpSession;

/**
 * Servlet implementation class searchController
 */
@WebServlet("/search.fe")
public class searchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String search = request.getParameter("search");
		
		Festival festival = new FestivalService().searchCheck(search);
		
		HttpSession session = request.getSession();
		
		if(festival != null) {
			session.setAttribute("festival", festival);
			session.setAttribute();
			response.sendRedirect( request.getContextPath() );
		} else {
			session.setAttribute();
			response.sendRedirect( request.getContextPath() );
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
