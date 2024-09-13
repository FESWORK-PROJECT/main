package com.feswork.information.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feswork.information.model.vo.Information;
import com.feswork.information.service.InformationService;
import com.google.gson.Gson;

/**
 * Servlet implementation class FestivalSortController
 */
@WebServlet("/list/wntyFstvlList.do")
public class FestivalSortController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FestivalSortController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
		String chooseSort = request.getParameter("sortOrder");
		ArrayList<Information> data = null;
	
		if(chooseSort.equals("dateSort")){
			data = new InformationService().getFestivalOrderByDate();
			
		}else if (chooseSort.equals("likeSort")) {
			data = new InformationService().sortLikeFestival();
		}else {
			
			request.setAttribute("errorMsg", "접속 실패했습니다");
		}
		
		   response.setContentType("application/json; charset=UTF-8");   
	       Gson gson = new Gson();
	    
	       String json = gson.toJson(data);
	       response.getWriter().write(json);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
