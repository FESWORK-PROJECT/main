<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판 목록</title>
   <style>

        .outer {
            background-color: white;
            width: 80%;
            margin: auto;
        }
        .inner-area {
            border: 1px solid #000025;
            width: 80%;
            margin: auto;
            padding: 5% 15%;
            background: #e7ecf7;
        }

        #boardList {text-align: center;}
        #boardList>tbody>tr:hover{cursor:pointer;}

        #pagingArea {width:fit-content; margin:auto;}

        #searchForm {width:80%; margin: auto;}
        #searchForm>* {float:left; margin:5px;}
        
        .select {width:25%;}
        .text {width:48%;}
        .searchBtn{width:20%;}
        
        .sortBtn {
            margin-left: 10px;
        }
        a {
        text-decoration: none;
        color: black;
        }      
        a:hover {
         text-decoration: none;
            color: blue;
     }

        td a{
            font-size: larger; 
        }

        h2{
            color: #35096ebb;
            font-size: large;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <jsp:include page="../common/header.jsp"/>

    <div class="outer">
        <br><br>
        <div class="innerOuter" style="padding: 5% 10%">
            <h2>축제 후기 등록 게시판</h2>
            <br>

            <a href="" class="btn btn-secondary" style="float:right">글쓰기</a>
            <div style="float:right; margin-right: 10px;">
                <button class="btn btn-outline-primary sortBtn" onclick="sortByViews()">조회수 정렬</button>
                <button class="btn btn-outline-primary sortBtn" onclick="sortByDate()">작성일 정렬</button>
            </div>
            <br><br>
            
            <table id="boardList" class="table table-hover" align="center">
                <thead>
                    <th>글번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>조회수</th>
                    <th>작성일</th>
                    <th>첨부파일</th>
                </thead>

                <tbody>
                    <tr onclick="location.href='/viewPost?id=5'">
                        <td>5</td>
                        <td><a href="/viewPost?id=5">마지막 공지사항 제목</a></td>
                        <td>admin</td>
                        <td>10</td>
                        <td>2024-04-01</td>
                        <td>■</td>
                    </tr>
                    <tr onclick="location.href='/viewPost?id=4'">
                        <td>4</td>
                        <td><a href="/viewPost?id=4">공지사항 제목 4</a></td>
                        <td>admin</td>
                        <td>10</td>
                        <td>2024-03-21</td>
                        <td>■</td>
                    </tr>
                    <tr onclick="location.href='/viewPost?id=3'">
                        <td>3</td>
                        <td><a href="/viewPost?id=3">공지사항 제목 3</a></td>
                        <td>admin</td>
                        <td>30</td>
                        <td>2024-03-07</td>
                        <td></td>
                    </tr>
                    <tr onclick="location.href='/viewPost?id=2'">
                        <td>2</td>
                        <td><a href="/viewPost?id=2">공지사항 제목 2</a></td>
                        <td>admin</td>
                        <td>50</td>
                        <td>2024-02-22</td>
                        <td></td>
                    </tr>
                    <tr onclick="location.href='/viewPost?id=1'">
                        <td>1</td>
                        <td><a href="/viewPost?id=1">공지사항 제목 1</a></td>
                        <td>admin</td>
                        <td>130</td>
                        <td>2024-01-07</td>
                        <td></td>
                    </tr>                                        
                </tbody>
            </table>
            <br>

            <div id="pagingArea">
                <ul class="pagination">
                    <li class="page-item"><a href="" class="page-link">Prev</a></li>
                    <li class="page-item"><a href="" class="page-link">1</a></li>
                    <li class="page-item"><a href="" class="page-link">2</a></li>
                    <li class="page-item"><a href="" class="page-link">3</a></li>
                    <li class="page-item"><a href="" class="page-link">4</a></li>
                    <li class="page-item"><a href="" class="page-link">5</a></li>
                    <li class="page-item"><a href="" class="page-link">Next</a></li>
                </ul>
            </div>

            <br clear="both">

            <form action="" id="searchForm">
                <div class="select">
                    <select name="condition" id="" class="custom-select form-select">
                        <option value="writer">작성자</option>
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select>
                </div>
                <div class="text">
                    <input type="text" class="form-control" name="keyword">
                </div>
                <button class="searchBtn btn btn-secondary">검색</button>
            </form>
            <br><br>
        </div>
        <br><br>
    </div>

     <jsp:include page="../common/footer.jsp"/>

    <script>
        function sortByViews() {
            // 조회수 기준으로 게시글 목록을 정렬하는 코드 추가
            alert('조회수 정렬 기능을 구현하세요.');
        }

        function sortByDate() {
            // 작성일 기준으로 게시글 목록을 정렬하는 코드 추가
            alert('작성일 정렬 기능을 구현하세요.');
        }
    </script>
</body>
</html>