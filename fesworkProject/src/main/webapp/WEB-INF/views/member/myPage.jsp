<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        margin: 0;
    }
    .outer {
        /* border: 1px solid red; */
        height: 700px;
        box-sizing: border-box;
        display: flex;
        background-color: rgb(227, 238, 227);
    }

    .content {
        /* border: 1px solid red; */
        height: 100%;
        width: 80%;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }

    #contentLeft, #contentRight {
        height: 100%;
        width: 10%;
    }

    .container {
        /* border: 1px solid red; */
        height: 180px;
        width: 180px;
        background-color: #88D66C;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        border-radius: 20px;
        margin: 5px;
        
    }

    .container-group {
        /* border: 1px solid red; */
        width: 100%;
        height: 200px;
        background-color:rgb(210, 233, 233);
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 20px;
        
    }

    .container-group a {
        text-decoration: none;
        color: white;
    }

    .container img {
        height: 80px
    }

    .button-group{
        /* border: 1px solid red; */
        height: 100;
        display: flex;
        align-items: center;
    }

    .button-group button{
        background-color: rgb(40, 44, 40);
        color: aliceblue;
        width: 150px;
        height: 40px;
        margin: 20px;
        border-radius: 5px  ;
        font-size: 12px;
    }

   
    
</style>
</head>
<body>
    <%@ include file="../common/menubar.jsp" %>
    <div class="outer">
        <div class="content" id="contentLeft"></div>
        <div class="content" id="contentCenter">
            <h2>마이페이지</h2>
            <br><br>
            <div class="container-group">
                <a href="#"><div class="container"><img src="../../resources/logo.jpg"><h4>나의축제</h4></div></a>
                <a href="#"><div class="container"><img src="../../resources/updateInfo.png"><h4>회원정보수정</h4></div></a>
                <a href="#"><div class="container"><img src="../../resources/post.png"><h4>게시글관리</h4></div></a>
            </div>
            <div class="button-group">
                <button type="button">로그아웃</button>
                <button type="button">탈퇴하기</button>
            </div>
            
        </div>
        <div class="content" id="contentRight"></div>
    </div>
</body>
</html>
