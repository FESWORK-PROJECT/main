<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        .back-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .back-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
 <jsp:include page="../common/header.jsp"/>

<div class="container">
    <h1>게시글 제목</h1>
    <p class="author">작성자: <strong>작성자 아이디</strong></p>
    <img src="image_url.jpg" alt="게시글 이미지" class="image">
    <div class="content">
        <p>여기에 게시글 내용이 들어갑니다. 게시글의 주요 내용을 서술하세요. 사용자에게 유용한 정보를 제공하는 것이 중요합니다.</p>
    </div>
    <a href="../" class="back-button">뒤로가기</a>
</div>

 <jsp:include page="../common/footer.jsp"/>



</body>
</html>