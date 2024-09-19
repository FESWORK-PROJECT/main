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
 * Servlet implementation class searchFestivalController
 */
@WebServlet("/searchRequest")
public class SearchFestivalController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchFestivalController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 지역별 
		String searchArea = request.getParameter("searchArea");
		String searchDate = request.getParameter("searchDate");
		String searchCate = request.getParameter("searchCate");
		
		ArrayList<Information> information  = new InformationService().getSearchFestival(searchArea, searchDate, searchCate);
			
		
			
		if(information != null){
			HttpSession session = request.getSession();
			session.setAttribute("fList", information);
			
			request.getRequestDispatcher("views/information/festivalinformation.jsp")
			.forward(request, response);
			
		}else{
			request.setAttribute("errorMsg", "요청이 실패했습니다");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
