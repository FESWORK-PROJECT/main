<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 작성글</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400;700&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
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
#img{
    padding-inline: 10px;
    padding-block: 10px;
    width: 150px; height: 100px;
}
.promo{
    padding-inline: 20px;
    padding-block: 20px;
}
#log{
    font-size: 35px;
    font-family: "Dongle", sans-serif;
    margin-top: 40px;
    margin-bottom: 20px;
}
table{
    width: 70%;
    font-size: 30px;
    font-family: "Dongle", sans-serif;
}
</style>
</head>
<body>
	<%-- <jsp:include page="../common/header.jsp"/> --%>
	<%@ include file="../common/header.jsp" %>
	<div id="board">
        <p id="log"> ${ loginMember.memberId } 님의 글 목록</p>
        <table id="board2" border= "">
        	<thead>
                <th class="promo">글번호</th>
                <th class="promo">제목</th>
                <th class="promo">조회수</th>
                <th class="promo">오픈날짜</th>
                <th class="promo">첨부파일</th>
            </thead>
            <tbody>
                <c:if test="${ not empty loginMember.memberId }" >
	            <c:forEach var="f" items="${MyFestival}">
	               <tr>
	                 <td class="promo">${ f.festivalNo }</td>
	                 <td class="promo">${ f.festivalName }</td>
	                 <td class="promo">${ f.fesLike }</td>
	                 <td class="promo">${ f.openDate }</td>
	                 <td class="promo">
                        <img src="${f.fesImg}" id="img" />
                    </td>
	               </tr>
			     </c:forEach>
                </c:if>
            </tbody>
        </table>
    </div>
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>