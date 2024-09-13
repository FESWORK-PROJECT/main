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
 * Servlet implementation class LoginController
 */
@WebServlet("/login.me")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
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
		String id = request.getParameter("memberId");
		String pwd = request.getParameter("memberPwd");
		
		Member m = new Member();
		m.setMemberId(id);
		m.setMemberPwd(pwd);
	
		Member loginMember = new MemberService().loginMember(m); 
		HttpSession session = request.getSession();
		
		if(loginMember != null) {
			session.setAttribute("loginMember", loginMember);
			session.setAttribute("alertMsg", "로그인성공");
			response.sendRedirect( request.getContextPath() );
		} else {
			session.setAttribute("alertMsg", "로그인실패. 아이디와 비밀번호를 확인하세요.");
			response.sendRedirect( request.getContextPath() );
		}
		
	}
	

}
