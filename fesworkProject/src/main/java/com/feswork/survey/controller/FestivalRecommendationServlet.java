package com.feswork.survey.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.feswork.information.model.vo.Information;
import com.feswork.survey.model.dto.SurveyInfo;
import com.feswork.survey.service.SurveyService;


@WebServlet("/survey")
public class FestivalRecommendationServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
        String preferredLocation = request.getParameter("preferredLocation");
        String[] themes = request.getParameterValues("theme");
        
        SurveyInfo sInfo = new SurveyInfo(preferredLocation, themes);
        
        ArrayList<Information> list = new SurveyService().selectList(sInfo);
        
        request.setAttribute("list", list);
        request.getRequestDispatcher("views/RecommendedPage/age.jsp").forward(request, response);
        
	}

}
