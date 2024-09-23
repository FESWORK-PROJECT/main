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

/**
 * Servlet implementation class LandDataController
 */
@WebServlet("/data")
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
		String localCode = request.getParameter("localCode");  // 요청 파라미터에서 지역 코드 가져옴

        // 서비스에서 지역 코드에 따른 축제 정보 가져오기
        List<Slide> land = slideService.getFestivalByLocalCode(localCode);
   

        // JSON 형식으로 응답
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        PrintWriter out = response.getWriter();
        out.print("{ \"localCode\": \"" + ((Slide) land).getLocalCode() + "\", "
                    + "\"festivalName\": \"" + ((Slide) land).getFestivalName() + "\", "
                    + "\"fesImage\": \"" + ((Slide) land).getFesImage() + "\" }");
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
