<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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

    .img-container {
        /* border: 1px solid red; */
        height: 180px;
        width: 180px;
        background-color: #c5b9d4bb;
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
        color: #35096ebb;
        font-size: large;
        font-weight: 800;
    }

    .img-container img {
        height: 80px
    }

    .button-group{
        /* border: 1px solid red; */
        height: 100;
        display: flex;
        align-items: center;
    }

    .button-group button{
        background-color: #35096ebb;
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

    <%@ include file="../common/header.jsp" %>
    <div class="outer">
        <div class="content" id="contentLeft"></div>
        <div class="content" id="contentCenter">
            <h2>마이페이지</h2>
            <br><br>
            <div class="container-group">
                <a href="<%= contextPath %>/views/member/likeList.jsp"><div class="img-container"><img src="<%= contextPath %>/resources/images/likeList.png">나의축제</div></a>
                <a href="<%= contextPath %>/views/member/modifyForm.jsp"><div class="img-container"><img src="<%= contextPath %>/resources/images/updateInfo.png">회원정보수정</div></a>
                <a href="<%= contextPath %>/views/member/myPost.jsp"><div class="img-container"><img src="<%= contextPath %>/resources/images/post.png">게시글관리</div></a>
            </div>
            <div class="button-group">
                <button type="button" type="button" data-toggle="modal" data-target="#deleteMemberModal">회원탈퇴</button>
            </div>
            
        </div>
        <div class="content" id="contentRight"></div>
    </div>
    
    
    <!-- 회원탈퇴용 모달 -->
	
	<div class="modal fade" id="deleteMemberModal" tabindex="-1" aria-labelledby="deleteMemberModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				
				<div class="modal-header">
					<h3 class="modal-title fs-5" id="deleteMemberModalLabel">회원탈퇴</h3>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">&times;</button>
				</div>
				
				<div class="modal-body">
					<form action="<%= contextPath %>/resign.me" method="post">
					
						<input type="hidden" name="memberId" value="${ loginMember.memberId }">
						
						<b>
								탈퇴 후 복구 불가능합니다.<br>
								그래도 탈퇴하시겠습니까?
						</b>
						<br><br>
						<div class="mb-3">
							<label for="memberPwd" class="col-form-label">비밀번호: </label>
							<input type="password" class="form-control" id="memberPwd" name="memberPwd" required>
						</div>

						<br>

						<button type="submit" class="btn btn-sm btn-warning">탈퇴하기</button>

					</form>

				</div>
			</div>
		</div>
	</div>
</body>
</html>
