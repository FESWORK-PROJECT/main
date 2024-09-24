<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시글 수정 페이지</title>
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
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        textarea {
            resize: vertical;
            min-height: 150px;
        }
        .button-group {
            margin-top: 20px;
        }
        .submit-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .submit-button:hover {
            background-color: #218838;
        }
        .cancel-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-left: 10px;
            transition: background-color 0.3s;
        }
        .cancel-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

 <%@ include file="../common/header.jsp" %>

<div class="container">
    <h1>게시글 수정</h1>
    
    
 
    <form action="updateReview.do" method="post">
    
    <input type="hidden" name="rvNo" value="${rv.rvNo}" />
    
    <input type="hidden" name="festivalNo" value="${rv.festivalNo}"> <!-- festivalNo 추가 -->
            
        <div class="form-group">
            <label for="rvTitle">제목</label>
            <input type="text" id="rvTitle" name="rvTitle" value="${rv.rvTitle}" required />
        </div>
 			
 		<div class="form-group">
            <label for="memId">작성자</label>
            <input type="text" id="memId" name="memId" value="${rv.memId}" required readonly/>
        </div>		
 				       
        <div class="form-group">
            <label for="rvContent">내용</label>
            <textarea id="rvContent" name="rvContent" required>${rv.rvContent}</textarea>
        </div>
        
        <div class="button-group">
            <button type="submit" class="submit-button">수정하기</button>
            <a href="../feswork/boardList?festivalNo=${rv.festivalNo}&cpage=1" class="cancel-button">취소</a>
        </div>
    </form>
</div>

 <%@ include file="../common/footer.jsp" %>
</body>
</html>
