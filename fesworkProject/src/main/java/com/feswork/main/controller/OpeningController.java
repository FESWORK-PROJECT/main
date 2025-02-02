package com.feswork.main.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class OpeningController
 */
@WebServlet("/Opening")
public class OpeningController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OpeningController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        List<Slide> open = slideService.selectOpenFestivals(); // 서비스 레이어에서 데이터 가져옴
        System.out.println("반환받은"+open); // 이미지 제대로 가지고 왔는지 로그찍어봄
        // Gson을 사용하여 리스트를 JSON으로 변환
        Gson gson = new Gson();
        String jsonResponse = gson.toJson(open);
        
        out.print(jsonResponse); // JSON 응답 출력
        out.flush();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
