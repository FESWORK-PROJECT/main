<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<style>
    .navi-area{
        background-color: #020138cb;;
        white-space: nowrap;
    }

    .menu {
        display: table-cell;
        width: 200px;
        height: 100px;
    }

    .menu a{
        text-decoration: none;
        font-weight: 900;
        font-size: 30px;
        line-height: 100px;
        color: white;
        
    }

    #navi-search input{
        width: 100px;
    }

    #navi-search{
        display: table-cell;
    }
</style>
</head>
<body>
<%
String contextPath = request.getContextPath();		// => /jsp
String alertMsg = (String)session.getAttribute("alertMsg");
%>
<% if (alertMsg != null) { %>
    <script>
        alert("<%= alertMsg %>");
    </script>
    <% session.removeAttribute("alertMsg"); %>
<% } %>
<div class="navi-area" align="center">
    <div><img class="menu" id="logo" src="<%=contextPath%>/resources/logo.jpg" alt="로고"></div>
    <div class="menu"><a href="#">소개</a></div>
    <div class="menu"><a href="#">축제정보</a></div>
    <div class="menu"><a href="#">축제홍보</a></div>
    <div class="menu" id="navi-search">
        <form action="">
            <input type="text"><button type="submit">검색</button>
        </form>
 </div>
    <div class="menu"><a href="/fesWork/views/member/loginForm.jsp">로그인</a></div>
</div>
</body>
</html>