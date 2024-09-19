package com.feswork.information.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feswork.information.model.vo.Information;
import com.feswork.information.service.InformationService;

/**
 * Servlet implementation class DetailFestival
 */
@WebServlet("/detailFes")
public class DetailFestival extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailFestival() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String festivalNo = request.getParameter("festivalNo");
		System.out.println("Received festivalNo: " + festivalNo);
		
		Information iBoard = new InformationService().selectDetailFestival(festivalNo);
		
		if(iBoard != null){
			HttpSession session = request.getSession();
			session.setAttribute("iBoard", iBoard);
			request.getRequestDispatcher("views/information/detailFestival.jsp").forward(request, response);
			
		}else{
			request.setAttribute("errorMsg", "해당 게시글을 찾을 수 없습니다.");
			
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
