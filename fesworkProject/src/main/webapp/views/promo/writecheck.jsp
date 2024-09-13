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
        <p> ${ loginMember.memberId } 님의 글 목록</p>
        <table id="board2" border= "">
        	<thead>
                <th>글번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>조회수</th>
                <th>작성일</th>
                <th>첨부파일</th>
            </thead>
            <tbody>
                <%-- for(Board b : list ) {} --%>
                	<c:forEach var="m" items="${ list }">
	                    <tr>
	                        <td>${ m.memberId }</td>
	                        <td>${ m.memberName }</td>
	                        <td>${ m.email }</td>
	                        <td>${ m.birth }</td>
	                        <td>${ m.gender }</td>
	                        <td>
	                        	<c:if test="${ not empty m.phone }">■</c:if>
	                        </td>
	                    </tr>
                    </c:forEach>
            </tbody>
        </table>
    </div>
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>