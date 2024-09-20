<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기 페이지</title>
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
        background-color: #f1f0f3bb;
    }

    table button {
        width: 280px;
        background-color: #35096ebb;
        color: aliceblue;
        border-radius: 5px;
    }


</style>

</head>

<body>
    <%@ include file="../common/header.jsp" %>
    
    <div class="outer">
        
        <div class="content" id="contentLeft"></div>
        <div class="content" id="contentCenter">
            <img src="#" alt="로고">
            <h2>아이디 찾기</h2>
            <div id="table">
                <form action="<%= contextPath %>/findId.me" method="post">
                    <table >
                        <tr>
                            <td colspan="3">이름</td>
                        </tr>
                        <tr align="center">
                            <td colspan="3">
                                <input type="text" name="memberName">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">이메일</td>
                        </tr>
                        <tr align="center">
                            <td colspan="3">
                                <input type="email" name="email">
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                        <tr align="center">
                            <td colspan="3">
                                <button type="submit">아이디 찾기</button>
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