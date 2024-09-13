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
 * Servlet implementation class ModifyMemberController
 */
@WebServlet("/modifyMember.me")
public class ModifyMemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifyMemberController() {
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
		String birth = request.getParameter("birth");
		String phone = request.getParameter("phone");
		
		System.out.println("콘트롤러가받은 birth:"+birth);
		
		Member m = new Member(memberId, email, memberName, birth, phone);
		
		System.out.println("콘드롤러에서 초기화된m:"+m);
		Member updateMem = new MemberService().updateMember(m);
		System.out.println("최종적으로받은updateMem:"+updateMem);
		if(updateMem == null) {
			request.setAttribute("alertMsg", "회원정보 수정 실패. 관리자에게 문의해주세요.");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", updateMem);
			session.setAttribute("alertMsg", "회원정보가 수정되었습니다.");
			
			response.sendRedirect(request.getContextPath()+"/modifyMemberPage.me");
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
