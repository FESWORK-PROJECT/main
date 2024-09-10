<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인페이지</title>
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

    #table-container {
        border: 20px solid #c5b9d4bb;
        border-radius: 10px;
        background-color: #c5b9d4bb;
        box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;
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
        background-color: #f0e9f3;
    }

    table button {
        width: 280px;
        background-color: #35096ebb;
        color: aliceblue;
        border-radius: 5px;
    }

    table a {
        text-decoration: none;
        color:#35096ebb;
    }
</style>

</head>

<body>
    <%@ include file="../common/header.jsp" %>
    
    <div class="outer">
        <div class="content" id="contentLeft"></div>
        <div class="content" id="contentCenter">
            <img src="#" alt="로고">
            <h2>로그인</h2>
            <div id="table-container">
                <form action="<%= contextPath %>/login.me" method="post">
                    <table >
                        <tr>
                            <td colspan="3">아이디</td>
                        </tr>
                        <tr align="center">
                            <td colspan="3">
                                <input type="text" name="memberId" required>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">비밀번호</td>
                        </tr>
                        <tr align="center">
                            <td colspan="3">
                                <input type="password" name="memberPwd" required>
                            </td>
                        </tr>
                        
                        <tr align="center">
                            <td colspan="3">
                                <button type="submit">로그인</button>
                            </td>
                        </tr>
                        <tr align="center">
                            <td>
                            	<!-- 회원가입 버튼으로 변경? 하고 서블릿을 사용해서 페이지만 요청하는 방식으로 변경해야함 -->
                                <a href="<%= contextPath %>/views/member/signInForm.jsp">회원가입</a>
                            </td>
                            <td>
                                <a href="<%= contextPath %>/findIdForm.jsp">아이디찾기</a>
                            </td>
                            <td>
                                <a href="<%= contextPath %>/findPasswordForm.jsp">비밀번호찾기</a>
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