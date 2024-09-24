<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시글 상세 페이지</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 800px;
            margin: auto;
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        h1 {
            font-size: 2em;
            margin-bottom: 10px;
        }
        .author {
            font-size: 0.9em;
            color: #555;
            margin-bottom: 20px;
        }
        .content {
            font-size: 1.1em;
            line-height: 1.6;
            margin-bottom: 20px;
        }
        .image {
            max-width: 100%;
            border-radius: 8px;
            margin-bottom: 20px;
        }
        .back-button, .edit-button, .delete-button {
            display: inline-block;
            padding: 10px 20px;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-right: 10px;
            transition: background-color 0.3s;
        }
        .back-button {
            background-color: #007BFF;
        }
        .back-button:hover {
            background-color: #0056b3;
        }
        .edit-button {
            background-color: #28a745;
        }
        .edit-button:hover {
            background-color: #218838;
        }
        .delete-button {
            background-color: #dc3545;
        }
        .delete-button:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
 <jsp:include page="../common/header.jsp"/>

<div class="container">
    <h1>${rv.rvTitle}</h1>
    <p class="author">작성자: <strong>${rv.memId}</strong></p>
    <img src="<%=request.getContextPath()%>${rv.rvImg}" alt="게시글 이미지" class="image">
    <div class="content">
        <p>${rv.rvContent}</p>
    </div>
    
    <a href="../feswork/boardList?festivalNo=${rv.festivalNo}&cpage=1" class="back-button">뒤로가기</a>
 	<c:choose>
 	
    <c:when test="${loginMember.memberId eq rv.memId}">
    <a href="updateReview1?rvNo=${rv.rvNo}" class="edit-button">수정하기</a>
    <a href="deletePost.do?festivalNo=${rv.festivalNo}&rvNo=${rv.rvNo}" class="delete-button" onclick="return confirm('정말 삭제하시겠습니까?');">삭제하기</a>
	</c:when>
	
	<c:otherwise>
		
	</c:otherwise>
	</c:choose>	
</div>

 <jsp:include page="../common/footer.jsp"/>
</body>
</html>