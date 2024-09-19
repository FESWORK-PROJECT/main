package com.feswork.promo.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.feswork.promo.Service.FestivalService;
import com.feswork.promo.model.vo.Festival;

/**
 * Servlet implementation class writeController
 */
@WebServlet("/writeController")
public class writeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public writeController() {
        super();
    }

    // GET 요청 처리
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 서비스 객체 생성
		FestivalService service = new FestivalService();

		// 서비스에서 축제 데이터를 가져옴
		List<Festival> list = service.getFestivalList();

		// 데이터를 request에 저장하여 JSP로 전달
		request.setAttribute("festivalList", list);

		// 데이터를 표시할 JSP로 포워딩
		request.getRequestDispatcher("/WEB-INF/views/myPage.jsp").forward(request, response);
	}

	// POST 요청 처리
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// POST 요청도 동일한 처리를 하므로 doGet 호출
		doGet(request, response);
	}
}

