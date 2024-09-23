<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>게시글 작성 페이지</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
        }
        h3 {
            text-align: center;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }
        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        textarea {
            height: 200px;
        }
        input[type="file"] {
            margin-top: 10px;
        }
        .submit-btn {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }
        .submit-btn:hover {
            background-color: #0056b3;
        }
        .image-preview {
            margin-top: 10px;
            max-width: 100%;
            height: auto;
        }

        h3{
            color: #6CC04A;
        }
    </style>
</head>
<body>
    <jsp:include page="../common/header.jsp"/>
    <br>
    
    <h3>축제 후기 작성</h3>
    <br>
    <div class="container">
    <form action="insertBoard" method="post" enctype="multipart/form-data">
    <input type="hidden" name="festivalNo" value="${festivalNo}"> <!-- festivalNo 추가 -->
    
    <label for="rvTitle">제목</label>
    <input type="text" id="rvTitle" name="rvTitle" required placeholder="제목을 입력해주세요." style="resize: none;">
	
    <label for="memId">작성자</label>
    <input type="text" id="memId" name="memId" value="${loginMember.memberId}" required readonly>

    <label for="rvContent">내용</label>
    <textarea id="rvContent" name="rvContent" required placeholder="내용을 입력해주세요." style="resize: none;"></textarea>

    <label for="rvImg">이미지 업로드</label>
    <input type="file" id="rvImg" name="rvImg" accept="image/*" required onchange="previewImage(event)">
    
    <img id="image-preview" class="image-preview" src="#" alt="이미지 미리보기" style="display: none;">

    <button type="submit" class="submit-btn">게시글 등록</button>
</form>

<script>
    function previewImage(event) {
        const image = document.getElementById('image-preview');
        const file = event.target.files[0];
        if (file) {
            const reader = new FileReader();
            reader.onload = function(e) {
                image.src = e.target.result;
                image.style.display = 'block';
            }
            reader.readAsDataURL(file);
        } else {
            image.src = '#';
            image.style.display = 'none';
        }
    }
</script>

  

</body>
</html>
 