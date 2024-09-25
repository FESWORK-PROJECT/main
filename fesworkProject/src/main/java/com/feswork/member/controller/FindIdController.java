package com.feswork.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feswork.member.model.vo.Member;
import com.feswork.member.service.MemberService;

/**
 * Servlet implementation class FindIdController
 */
@WebServlet("/findId.me")
public class FindIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String memberName = request.getParameter("memberName");
		String email = request.getParameter("email");
		
		Member m = new Member(); 
		m.setMemberName(memberName);
		m.setEmail(email);
		
		
		Member memId = new MemberService().findId(m);
		
		
//		System.out.println(memId);
		if(memId != null) {
			String findId = memId.getMemberId();
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "가입하신 아이디는 "+ findId + " 입니다.");
			response.sendRedirect( request.getContextPath()+"/loginPage.me");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "가입하신 정보가 없습니다. 정확히 입력했는지 다시 확인해주세요.");
			response.sendRedirect( request.getContextPath()+"/findIdPage.me" );
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
