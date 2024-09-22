<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400;700&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<style>
/* 상단 메뉴 스타일 */
        .header {  /*#020138cb*/
            background-color: #35096ebb;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            font-family: "Dongle", sans-serif;
            font-weight: 300;
            font-style: normal;
            font-size: 35px;
            white-space: nowrap;
            
        }
        
        .header a {
            color: rgb(255, 255, 255);
            font-weight: bold;
            text-decoration: none;
            padding: 60px;
        }

        .header a:hover {
            text-decoration: none;
            color: yellow;
        }

        .header input[type="text"] {
            padding: 5px;
            border-radius: 15px;
            border: 1px; 
            margin-left: 400px;
        }

        .search button {
            border-radius: 15px;
            border: 1px;
            color: white;
            background-color: rgb(64, 12, 133);
        }
</style>
</head>
<body>
<% 
	String contextPath = request.getContextPath(); 

	String alertMsg = (String)session.getAttribute("alertMsg");
%>
<% if (alertMsg != null) { %>
	<script>
		alert("<%= alertMsg %>");
	</script>
	<% session.removeAttribute("alertMsg"); %>
<% } %>


    <!-- 상단 메뉴 -->
    <div class="header">
        <div class="navi">
            <a href="<%=contextPath %>">
            	<img src="<%=contextPath %>/resources/images/feswork_logo_full.png" width="110px" height="100px">
            </a>
            <a href="<%=contextPath%>/introducePage.intro">소개</a>
            <a href="<%=contextPath%>/information">축제정보</a>
            <a href="<%= contextPath %>/views/promo/promo.jsp">축제홍보</a>
        </div>
      <!--   <div class="search">
            <input type="text" placeholder="검색">
            <button>검색</button>
			불필요한 기능인거 같아서 일단 주석 처리만 했습니다.
        </div> -->
        
        <form class="search" action="search" method="get">
            <input class="keyword" type="text" placeholder="검색" value="" name="festivalName" autocomplete="off">
            <button class="searchBtn" type="submit">검색</button>
        </form>
        <div>
        	<c:choose>
        		<c:when test="${ empty loginMember }">
        			<!-- 로그인 안된 상태 -->
		            <a href="<%= contextPath %>/loginPage.me">로그인/회원가입</a>
        		</c:when>
        		<c:otherwise>
        			<!-- 로그인 성공 -->
        			<a href="<%= contextPath %>/mypagePage.me">마이페이지</a>
        			<a href="<%= contextPath %>/logout.me">로그아웃</a>
        		</c:otherwise>
        	</c:choose>
        </div>
    </div>
    <script>
    const Searching = Search.prototype;
    
    function Search(){
    	this.keyword = document.querySelector('input[name = "search"]');
    	this.engine = document.querySelector();
    	this.button = document.querySelector('.searchBtn');
    	this.form
    }
    </script>
</body>
</html>