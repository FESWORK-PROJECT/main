<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 작성글</title>
<style>
a{
    text-decoration: none;
}
th{
	text-decoration: none;
}
#p{
    margin-left: auto;
    margin-right: auto;
}
#board {
	text-decoration: none;
    font-size: 20px;
    width: 80%; /* 원하는 너비로 설정 */
    margin: 0 auto; /* 상하 여백은 0, 좌우 여백은 auto로 중앙 정렬 */
    text-align: center; /* (선택) 텍스트를 중앙 정렬하고 싶으면 추가 */
}
#board2 {
    border: 1px solid;
    margin: 0 auto; /* 위아래 여백은 0, 좌우 여백은 자동 */
}
#num{
    width: 80px;
}
#title{
    width: 500px;
}
#date{
    width: 150px;
}
#count{
    width:80px
}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<div id="board">
        <p>*** 님의 글 목록</p>
        <table id="board2" border= "">
            <tbody>
                <tr>
                    <th id="num">번호</th>
                    <th id="title">제목</th>
                    <th id="date">작성일</th>
                    <th id="count">조회수</th>
                </tr>
                <tr>
                    <th>1</th>
                    <th><a href="../board/1.html">구리시 한강 코스모스 축제</a></th>
                    <th>2024-08-23</th>
                    <th>150</th>
                </tr>
                <tr>
                    <th>2</th>
                    <th><a href="../board/2.html">아 하기 싫다</a></th>
                    <th>2024-08-27</th>
                    <th>2000</th>
                </tr>
                <tr>
                    <th>3</th>
                    <th><a href="../board/3.html">어그로 끌기 대 성공!</a></th>
                    <th>2024-08-29</th>
                    <th>450</th>
                </tr>
                <tr>
                    <th>4</th>
                    <th><a href="../board/4.html">내일은 뭘먹지</a></th>
                    <th>2024-09-03</th>
                    <th>200</th>
                </tr>
                <tr>
                    <th>5</th>
                    <th><a href="../board/5.html">님들 나 큰일남</a></th>
                    <th>2024-09-03</th>
                    <th>400</th>
                </tr>
            </tbody>
        </table>
    </div>
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>