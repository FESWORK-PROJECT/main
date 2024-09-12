<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정페이지</title>
<style>
    body {
        margin: 0;
    }
    .outer {
        border: 1px solid red;
        height: 700px;
        box-sizing: border-box;
        display: flex;
        background-color: rgb(227, 238, 227);
    }

    .content {
        border: 1px solid red;
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

    .container {
        background-color: #020138cb;;
        padding: 20px;
        width: 300px;
        border-radius: 10px;
        margin-bottom: 20px;
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

    .container input[type="password"],
    .container input[type="email"],
    .container input[type="date"] {
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
        background-color: #ccc;
        border-color: #000;
    }

    .submit-btn {
        background-color: #333;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
        box-sizing: border-box;
    }

    input[name="userName"], input[name="phone"]{
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    
</style>
</head>
<body>
    <%@ include file="../common/header.jsp" %>
    <div class="outer">
        <div class="content" id="contentLeft"></div>
        <div class="content" id="contentCenter">
            <h2>정보수정</h2>
            <!-- <div class="container">
                <input type="password" name="userPwd" placeholder="비밀번호*" required>
                <input type="password" name="userPwdCheck" placeholder="비밀번호 확인*" required>
            </div> -->
            <div class="container">
                <input type="email" name="email" placeholder="이메일 주소*" required>
                <input type="text" name="userName" placeholder="이름*" required>
                <input type="date" name="birthDate" placeholder="생년월일" required>
                
                <div class="gender-container">
                    <input type="radio" id="male" name="gender" value="male" required>
                    <label for="male">남자</label>
                    <input type="radio" id="female" name="gender" value="female">
                    <label for="female">여자</label>
                </div>
                
                <input type="text" name="phone" placeholder="휴대전화번호" required>
            </div>
            <button type="submit" class="submit-btn">수정</button>
        </div>
        <div class="content" id="contentRight"></div>
    </div>
</body>
</html>
