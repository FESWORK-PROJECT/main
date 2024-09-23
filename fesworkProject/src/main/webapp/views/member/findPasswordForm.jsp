<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기 페이지</title>
<style>

    body{
        margin: 0px;
        
    }
    .outer{
        /* border: 1px solid red; */
        
        display: flex;
    }
    
    .content{
        /* border: 1px solid red; */
        height: 500px;
        background-color: rgb(227, 238, 227);
    }

    #contentLeft, #contentRight {
        width: 25%;
    }

    #contentCenter{
        width: 50%;
        display: flex;
        justify-content: center;
        flex-direction: column;
        align-items: center;
    }

    #table {
        border: 20px solid #c5b9d4bb;
        border-radius: 10px;
        background-color: #c5b9d4bb;
    }

    table {
        width: 300px;
        border-collapse:collapse;
        
    }

    table  * {
        background-color: #c5b9d4bb;
        padding: 5px
    }


    table input {
        width: 280px;
        border-radius: 5px;
        background-color: #fbfafcbb;
    }

    table button {
        width: 280px;
        background-color: #35096ebb;
        color: aliceblue;
        border-radius: 5px;
    }
    
    .member-title {
   		 font-family: "Dongle", sans-serif;
   		 font-size: 40px;
   		 margin: 0px;
    }
    
</style>

</head>

<body>
    <%@ include file="../common/header.jsp" %>
    
    <div class="outer">
        
        <div class="content" id="contentLeft"></div>
        <div class="content" id="contentCenter">
            <a href="<%=contextPath %>">
            	<img src="<%=contextPath %>/resources/images/feswork_logo_full.png" alt="로고" width="200px">
           	</a> 
            <p class="member-title">비밀번호 찾기</p>
            <div id="table">
                <form action="<%= contextPath %>/findPassword.me" method="post">
                    <table >
                        <tr>
                            <td colspan="3">아이디</td>
                        </tr>
                        <tr align="center">
                            <td colspan="3">
                                <input type="text" name="memberId" id="memberId">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">이름</td>
                        </tr>
                        <tr align="center">
                            <td colspan="3">
                                <input type="text" name="memberName" id="memberName">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">이메일</td>
                        </tr>
                        <tr align="center">
                            <td colspan="3">
                                <input type="email" name="email" id="email">
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                        <tr align="center">
                            <td colspan="3">
                                <button type="submit">비밀번호 찾기</button>
                            </td>
                        </tr>
                        
                    </table>
                </form>
            </div>
        </div>
        <div class="content" id="contentRight"></div>
    </div>


</body>
</html>