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
 * Servlet implementation class SingupController
 */
@WebServlet("/singup.me")
public class SignupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupController() {
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
		HttpSession session = request.getSession();
		
		
		String memberId = request.getParameter("memberId");
		String memberPwd = request.getParameter("memberPwd");
		String email = request.getParameter("email");
		String memberName = request.getParameter("memberName");
		String birth = request.getParameter("birth");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		
		Member m = new Member(memberId, memberPwd, email, memberName, birth, gender, phone);
		
		int result = new MemberService().signupMember(m);
		
		
		if(result>0) {
			
			session.setAttribute("alertMsg", m.getMemberName()+"님 FESWORK와 함께해주셔서 감사합니다.");
			
			response.sendRedirect(request.getContextPath());
		} else {
			session.setAttribute("alertMsg", "회원가입에 실패했습니다. 관리자에게 문의해주세요.");
		}
	}

}
