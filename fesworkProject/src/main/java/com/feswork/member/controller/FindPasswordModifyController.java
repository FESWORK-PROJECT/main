package com.feswork.member.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.feswork.member.service.MemberService;

/**
 * Servlet implementation class FindPasswordModifyController
 */
@WebServlet("/findPasswordModify.me")
public class FindPasswordModifyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPasswordModifyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String newPwd = request.getParameter("newPwd");
		String memberId = request.getParameter("memberId");
		String memberPwd = (String) session.getAttribute("findPwd");
		HashMap<String, String> memberMap = new HashMap<>();
		
		
		memberMap.put("memberPwd", memberPwd);
		memberMap.put("newPwd", newPwd);
		memberMap.put("memberId", memberId);
		
//		System.out.println("memberPwd 값 :"+memberPwd);
//		System.out.println("newPwd 값 :"+newPwd);
//		System.out.println("memberId 값 :"+memberId);
		
		int result = new MemberService().modifyPwd(memberMap);
		
//		System.out.println("반환받은 result의 값 :"+result);
		if(result>0) {
			session.setAttribute("alertMsg", "비밀번호가 변경되었습니다.");
			response.sendRedirect(request.getContextPath()+"/loginPage.me");
		} else {
			session.setAttribute("alertMsg", "비밀번호 변경 실패. 관리자에게 문의해주세요.");
			response.sendRedirect(request.getContextPath()+"/loginPage.me");
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
