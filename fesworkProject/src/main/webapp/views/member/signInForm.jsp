<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입페이지</title>
<style>
    body {
        margin: 0;
    }
    .outer {
        /* border: 1px solid red; */
        height: 900px;
        box-sizing: border-box;
        display: flex;
        background-color: rgb(227, 238, 227);
    }

    .content {
        /* border: 1px solid red; */
        height: 100%;
        width: 60%;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        
    }

    #contentLeft, #contentRight {
        height: 100%;
        width: 20%;
    }

    .signup-container {
        background-color: #c5b9d4bb;
        padding: 20px;
        width: 300px;
        border-radius: 10px;
        margin-bottom: 20px;
        box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px, rgba(0, 0, 0, 0.22) 0px 10px 10px;
    }

    .input-group {
        display: flex;
        align-items: center;
        margin: 10px 0;
    }

    .input-group input[type="text"] {
        width: 65%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px 0 0 5px;
        box-sizing: border-box;
    }

    .input-group button {
        width: 35%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 0 5px 5px 0;
        box-sizing: border-box;
        background-color: #333;
        color: white;
        cursor: pointer;
    }

    .signup-container input[type="password"],
    .signup-container input[type="email"],
    .signup-container input[name="birth"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    .gender-container {
        display: flex;
        justify-content: space-around;
        margin: 10px 0;
    }

    .gender-container input[type="radio"] {
        display: none;
    }

    .gender-container label {
        width: 40%;
        padding: 10px 0;
        border: 2px solid #ccc;
        border-radius: 5px;
        text-align: center;
        font-weight: bold;
        cursor: pointer;
        background-color: white;
    }

    .gender-container input[type="radio"]:checked + label {
        background-color: #54696d;
        border-color: #b0b3cf;
    }

    .submit-btn {
        background-color: #333;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 60%;
        box-sizing: border-box;
        font-size: large;
        box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px, rgba(0, 0, 0, 0.22) 0px 10px 10px;
    }

    input[name="memberName"], input[name="phone"]{
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
        
    }

    form{
        display: flex;
        flex-direction: column;
        align-items: center;
        
    }

    button[type=submit]:disabled{
        background-color: #918f8f;
        color: #b8bcbd;
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
        <form action="<%= contextPath %>/singup.me" method="post">
         	<a href="<%=contextPath %>">
            	<img src="<%=contextPath %>/resources/images/feswork_logo_full.png" alt="로고" width="200px">
           	</a> 
            <p class="member-title">회원가입</p>
            <div class="signup-container">
                <div class="input-group">
                    <input type="text" name="memberId" placeholder="아이디*" required>
                    <button type="button" onclick="idCheck();">중복체크</button>
                </div>
                <input type="password" name="memberPwd" placeholder="비밀번호*" required>
                <input type="password" name="memberPwdCheck" placeholder="비밀번호 확인*" required>
                <input type="email" name="email" placeholder="이메일 주소*" required>
            </div>
            <div class="signup-container">
                <input type="text" name="memberName" placeholder="이름*" required>
                <input type="text" name="birth" placeholder="생년월일" required>
                
                <div class="gender-container">
                    <input type="radio" id="male" name="gender" value="남자" required>
                    <label for="male">남자</label>
                    <input type="radio" id="female" name="gender" value="여자">
                    <label for="female">여자</label>
                </div>
                
                <input type="text" name="phone" placeholder="휴대전화번호" required>
            </div>
            <button type="submit" class="submit-btn" onclick="return pwdCheck();" disabled>회원가입</button>
        </form>
        </div>
        <div class="content" id="contentRight"></div>
    </div>
    
    <script>
    	function pwdCheck(){
    		const pwd = document.querySelector(".container input[name=memberPwd]").value;
    		const pwdCheck = document.querySelector(".container input[name=memberPwdCheck]").value;

    		if(pwd != pwdCheck){
    			alert("비밀번호가 일치하지 않습니다. 다시 확인해주세요.");
    			return false;
    		}
    		
    	}
    	
    	function idCheck(){
    		 const idEle = $("input[name='memberId']");
    		
    		$.ajax({
    			url: 'idCheck.me',
    			type: 'get',
    			data: { memberId: idEle.val() },
    			success: function(result){
    				if(result=='false'){
    					alert("이미 사용중인 아이디입니다.");
    					idEle.focus();
    				} else if(result=='true'){
    					alert("사용 가능한 아이디입니다.");
    					$("form button[type=submit]").prop("disabled", false);
    				}
    			},
    			ERROR: function(err){
    				console.log(err);
    			}
    		});
    	}
    </script>
</body>
</html>
