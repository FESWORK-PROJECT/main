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
        h1 {
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

        h1{
            color: #6CC04A;
        }
    </style>
</head>
<body>
    <jsp:include page="../common/header.jsp"/>
    
    <h1>후기 작성</h1>
    <div class="container">

        <form action="/submit-post" method="post" enctype="multipart/form-data">
            <label for="title">제목</label>
            <input type="text" id="title" name="title" required placeholder="제목을 입력해주세요." style="resize: none;">

            <label for="content" aria-placeholder="">내용</label>
            <textarea id="content" name="content" required placeholder="내용을 입력해주세요." style="resize: none;"></textarea>

            <label for="image">이미지 업로드</label>
            <input type="file" id="image" name="image" accept="image/*" onchange="previewImage(event)">

            <img id="image-preview" class="image-preview" src="#" alt="이미지 미리보기" style="display: none;">

            <button type="submit" class="submit-btn">게시글 등록</button>
        </form>
    </div>
    <jsp:include page="../common/footer.jsp"/>
   

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
 