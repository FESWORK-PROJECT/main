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
 * Servlet implementation class ResignController
 */
@WebServlet("/resign.me")
public class ResignController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResignController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();	
		String memberId = request.getParameter("memberId");
		String memberPwd = request.getParameter("memberPwd");
		
		Member m = new Member();
		
		m.setMemberId(memberId);
		m.setMemberPwd(memberPwd);
		
		int result =  new MemberService().resignMember(m);
		
		if(result >0) {
			// 세션에 저장된 loginMember 제거
			session.removeAttribute("loginMember");
			// 회원탈퇴 얼럿 출력
			session.setAttribute("alertMsg", "회원탈퇴 성공, 언젠가 다시 만나요.");
			// 메인페이지로 리다이렉트
			response.sendRedirect(request.getContextPath());
		} else {
			// 비밀번호 불일치, 확인 요청 얼럿
			session.setAttribute("alertMsg", "회원탈퇴 실패, 비밀번호를 다시 확인해주세요.");
			// 마이페이지로 포워딩
			response.sendRedirect(request.getContextPath()+"/views/member/myPage.jsp");
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
