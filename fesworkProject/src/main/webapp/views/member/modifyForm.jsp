<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정페이지</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<style>
    body {
        margin: 0;
    }
    .outer {
        /* border: 1px solid red; */
        height: 800px;
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

    .modify-container {
        background-color: #c5b9d4bb;;
        padding: 20px;
        width: 300px;
        border-radius: 10px;
        margin-bottom: 20px;
    }


    .modify-container input[type="password"],
    .modify-container input[type="email"],
    .modify-container input[type="date"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
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

    input[name="memberId"], input[name="memberName"], input[name="phone"], input[name="birth"]{
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    
    input[name="memberId"]{
        background-color: #bebebe;
        color: #6b6b6b;
    }

    
</style>
</head>
<body>
    <%@ include file="../common/header.jsp" %>
    <div class="outer">
        <div class="content" id="contentLeft"></div>
        <div class="content" id="contentCenter">
            <h2>정보수정</h2>
        
            <form action="<%= contextPath %>/modifyMember.me" method="post">
            <div class="modify-container">
            	아이디: <input type="memberId" name="memberId" value="${loginMember.memberId}"  readonly>
            	비밀번호: <button type="button" class="modify-btn" data-toggle="modal" data-target="#updatePwdModal">비밀번호 변경</button>
                이름: <input type="text" name="memberName" value="${loginMember.memberName}" required>
                이메일: <input type="email" name="email" value="${loginMember.email}" required>
                생년월일: <input type="text" name="birth" value="${loginMember.birth}" required>
                휴대전화번호: <input type="text" name="phone" placeholder="휴대전화번호"  value="${loginMember.phone}" >
            </div>
            <button type="submit" class="modify-btn">수정</button>
            </form>
        </div>
        <div class="content" id="contentRight"></div>
    </div>
    
	<!-- 비밀번호 변경용 모달 -->
	<div class="modal fade" id="updatePwdModal" tabindex="-1" aria-labelledby="updatePwdModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="updatePwdModalLabel">비밀번호 변경</h1>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">&times;</button>
				</div>
				<div class="modal-body">
					
					<form action="<%= contextPath %>/modifyPassword.me" method="post">

						<div class="mb-3">
							<label for="memberPwd" class="col-form-label">현재 비밀번호: </label>
							<input type="password" class="form-control" id="memberPwd" name="memberPwd">
						</div>

						<div class="mb-3">
							<label for="newPassword" class="col-form-label">변경할 비밀번호:</label>
							<input type="password" class="form-control" id="newPwd" name="newPwd">
						</div>

						<div class="mb-3">
							<label for="newPasswordCheck" class="col-form-label">변경할 비밀번호 확인:</label>
							<input type="password" class="form-control" id="newPwdCheck" name="newPwdCheck">
						</div>

						<br>

						<button class="modify-btn" onclick="return pwdCheck()">비밀번호 변경</button>

					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
