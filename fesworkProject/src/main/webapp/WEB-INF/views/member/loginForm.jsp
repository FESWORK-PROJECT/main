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

    #table {
        border: 20px solid #88D66C;
        border-radius: 10px;
        background-color: #88D66C;
    }

    table {
        width: 300px;
        border-collapse:collapse;
        
    }

    table  * {
        background-color: #88D66C;
        padding: 5px
    }


    table input {
        width: 280px;
        border-radius: 5px;
        background-color: #c7e2bd;
    }

    table button {
        width: 280px;
        background-color: rgb(43, 42, 42);
        color: aliceblue;
        border-radius: 5px;
    }

    table a {
        text-decoration: none;
        color:rgb(43, 42, 42);
    }
</style>

</head>

<body>
    <%@ include file="../common/menubar.jsp" %>
    
    <div class="outer">
        
        <div class="content" id="contentLeft"></div>
        <div class="content" id="contentCenter">
            <img src="#" alt="로고">
            <h2>아이디찾</h2>
            <div id="table">
                <form action="어디로보낼지정하자" method="post">
                    <table >
                        <tr>
                            <td colspan="3">아이디</td>
                        </tr>
                        <tr align="center">
                            <td colspan="3">
                                <input type="text" name="userId" id="userId">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">비밀번호</td>
                        </tr>
                        <tr align="center">
                            <td colspan="3">
                                <input type="password" name="userPwd" id="userPwd">
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                        <tr align="center">
                            <td colspan="3">
                                <button type="submit">로그인</button>
                            </td>
                        </tr>
                        <tr align="center">
                            <td>
                                <a href="/fesWork/views/member/enrollForm.jsp">회원가입</a>
                            </td>
                            <td>
                                <a href="">아이디찾기</a>
                            </td>
                            <td>
                                <a href="">비밀번호찾기</a>
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