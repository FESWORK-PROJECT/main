package com.feswork.information.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feswork.information.model.vo.Information;
import com.feswork.information.service.InformationService;

/**
 * Servlet implementation class SearchKeywordFestival
 */
@WebServlet("/search")
public class SearchKeywordFestival extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchKeywordFestival() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String festivalName = request.getParameter("festivalName");
		
		ArrayList<Information> sList = new InformationService().getFestivalSearch(festivalName);
		HttpSession session = request.getSession();
		if(sList != null){
			session.setAttribute("fList", sList);
			request.getRequestDispatcher("views/information/festivalinformation.jsp")
			.forward(request, response);
		}else {
			
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
