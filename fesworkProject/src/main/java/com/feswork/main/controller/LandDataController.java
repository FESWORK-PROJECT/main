package com.feswork.main.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feswork.slide.model.vo.Slide;
import com.feswork.slide.service.slideService;
import com.google.gson.Gson;

/**
 * Servlet implementation class LandDataController
 */
@WebServlet("/festival")
public class LandDataController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LandDataController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String localCode = request.getParameter("localCode");  // URL 파라미터로부터 localCode 값을 받음
        List<Slide> land = slideService.getFestivalByLocalCode(localCode);

        // Gson을 사용해 List<Slide>를 JSON으로 변환
        Gson gson = new Gson();
        String jsonResponse = gson.toJson(land);
        
        // JSON으로 변환 후 응답
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(jsonResponse);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
