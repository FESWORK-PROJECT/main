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
 * Servlet implementation class FindPasswordController
 */
@WebServlet("/findPassword")
public class FindPasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPasswordController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String memberId = request.getParameter("memberId");
		String memberName = request.getParameter("memberName");
		String email = request.getParameter("email");
		
		Member m = new Member(); 
		m.setMemberId(memberId);
		m.setMemberName(memberName);
		m.setEmail(email);
		
		
		Member memPwd = new MemberService().findPwd(m);
		
		if(memPwd != null) {
			String findPwd = memPwd.getMemberPwd();
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "비밀번호는 "+ findPwd + " 입니다.");
			response.sendRedirect( request.getContextPath()+"/views/member/findPasswordForm.jsp");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "가입하신 정보가 없습니다. 정확히 입력했는지 다시 확인해주세요.");
			response.sendRedirect( request.getContextPath()+"/views/member/findPasswordForm.jsp" );
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
