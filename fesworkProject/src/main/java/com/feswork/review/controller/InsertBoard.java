package com.feswork.review.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feswork.common.template.MyFileRenamePolicy;
import com.feswork.review.model.vo.Review;
import com.feswork.review.service.ReviewService;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class InsertBoard
 */
@WebServlet("/insertBoard")
public class InsertBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertBoard() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");

		int maxSize = 10 * 1024 * 1024; 	// 10mbyte
		String savePath = request.getSession().getServletContext().getRealPath("/resources/upfiles/");
		
		MultipartRequest multipart = new MultipartRequest(request
		, savePath
		, maxSize
		, "UTF-8"
		, new MyFileRenamePolicy());
		
		
		String festivalNo = multipart.getParameter("festivalNo");
		String memId = multipart.getParameter("memId");
		String rvTitle = multipart.getParameter("rvTitle");
		String rvContent = multipart.getParameter("rvContent");
		String rvImg = multipart.getParameter("rvImg");
		
		HashMap rv = new HashMap();
		rv.put("festivalNo", festivalNo);
		rv.put("memId", memId);
		rv.put("rvTitle", rvTitle);
		rv.put("rvContent", rvContent);
		rv.put("rvImg ", "resources/upfiles/"+rvImg );
	
		System.out.println(festivalNo + " 확인용 ");
		int result = new ReviewService().insertReview(rv);
		
		if(result > 0){
			//request.getRequestDispatcher("boardList?festivalNo="+festivalNo+"&cpage=1").forward(request, response);
			
			  String festivalNoEncoded = URLEncoder.encode(festivalNo, "UTF-8");
			    String redirectUrl = "boardList?festivalNo=" + festivalNoEncoded + "&cpage=1";
			    response.sendRedirect(redirectUrl);
		
		
		}
	}

}
