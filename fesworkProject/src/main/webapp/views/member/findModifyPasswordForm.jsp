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
    
        .modify-btn {
        background-color: #35096ebb;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
        box-sizing: border-box;
        margin: 10px 0px;
    }
    
    #idInputBox{
    	background-color: rgb(156, 156, 156);
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
            <p class="member-title">비밀번호 변경</p>
            <div id="table">
                <form action="<%= contextPath %>/findPasswordModify.me" method="post">
                    <table >
                    	<tr >
                            <td colspan="3">비밀번호를 변경할 아이디</td>
                        </tr>
                        <tr align="center">
                            <td colspan="3">
                                <input type="text" id="idInputBox" name="memberId" value="${ findId }" readonly>
                            </td>
                        <tr>
                            <td colspan="3">변경할 비밀번호: </td>
                        </tr>
                        <tr align="center">
                            <td colspan="3">
                                <input type="password" name="newPwd" >
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">변경할 비밀번호 확인: </td>
                        </tr>
                        <tr align="center">
                            <td colspan="3">
                                <input type="password" name="newPwdCheck">
                            </td>
                        </tr>

                    </table>
                    <button class="modify-btn" onclick="return pwdCheck()">비밀번호 변경</button>
                </form>
            </div>
        </div>
        <div class="content" id="contentRight"></div>
    </div>
	<script>
		function pwdCheck() {
			const pwd = document.querySelector("input[name=newPwd]").value;
			const pwdCheck = document.querySelector("input[name=newPwdCheck]").value;
	
			if (pwd != pwdCheck) {
				alert("비밀번호와 비밀번호 확인 입력값이 다릅니다.");
				return false;
			}
		}
	</script>


</body>
</html>