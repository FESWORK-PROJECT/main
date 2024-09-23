<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>축제 홍보 페이지</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400;700&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<style>
#part1{
    color: yellow;
    text-align: center;
    margin-top: 50px;
}
.write {
    display: flex; /* Flexbox로 설정 */
    align-items: center; /* 수직 정렬 */
    justify-content: center; /* 수평 정렬 */
    color: #35096ebb;
    text-align: center;
    font-size: 25px;
    text-decoration: none;
    margin-top: auto;
    margin-bottom: auto;
    margin-right: 10px;
    width: 140px;
    height: 40px;
    background-color: rgb(252, 252, 252);
    border-radius: 10px;
    border: none;
    cursor: pointer;
}
#title{
    width: 600px;
}
#second{
    font-family: "Dongle", sans-serif;
    padding-left:150px;
    text-decoration: none;
    justify-content: space-between;
    display: flex;
    background-color: #5658b58a;
    margin-top: 50px;
    color: white;
    margin-bottom: 20px;
}
#color{
    color: yellow;
}
#color1{
    background-color: #35096ebb; color: white;
    border-top: 2px solid black; border-bottom: 2px solid black;
}
#color2{
    background-color: #5658b58a; color: white;
}
#color3{
    background-color: #a575e44f; color: white;
}
#second-1{
    text-align: center;
    margin-left: 20px;
}
table {
    font-size: 30px;
    border-collapse: collapse;
    text-align: center;
}
th, td {
    border: none; /* 테두리 제거 */
    padding: 8px;
    text-align: center;
}
#docu{
    width: 80%;
    margin-top: 50px;
    margin-left: auto;
    margin-right: auto;
    border-collapse: collapse;
    border: 1px;
    text-align: center;
}
#bottom {
    margin-bottom: 40px;
    display: flex;
    justify-content: center;
    align-items: center;
}
#bottom-search1{
    color: #fff9ff;
    border: 2px solid #35096ebb;
    width: 20em;
    height: 4em;
    border-radius: 10px 0px 0px 10px;
}
#bottom-search2{
    bottom: 0px;border: 2px solid #35096ebb;width: 5em;height: 4.4em;border-radius: 0px 10px 10px 0px;cursor: pointer;
}
#second-2{
    display: flex;
}
#img3{
    width: 100px;height: 25px;
}

#pagination {
    display: flex;justify-content: center;align-items: center;margin: 20px 0;
}
#pagingArea {width:fit-content; margin:auto;}
#page-number {
    font-size: 20px;margin: 0 10px;display: inline-block; 
}
.pagination-button {
    background-color: #35096ebb;color: white;border: none;cursor: pointer;
    padding: 10px;font-size: 18px;border-radius: 5px;display: inline-block;
}
#ggg{
    margin-left: 30px;margin-right: 20px;
}
#kkk{
    margin-top: 28px;
}
.carousel {
    margin-top: 200px;position: relative;width: 400px; margin: 0 auto; text-align: center; 
}
.description{
    border-radius: 0px 0px 10px 10px;background-color: #35096ebb;
    margin-bottom: 20px;color: yellow;padding: auto;font-size: 20px;
}
.slide {
    display: none;opacity: 0;transition: opacity 0.5s ease-in-out;
}
.slide.active {
    margin-top: 20px;
    display: block;opacity: 1;
}
.arrow {
    position: absolute;top: 50%;transform: translateY(-50%);
    background-color: rgba(0, 0, 0, 0.5);color: white;border: none;cursor: pointer;
}
.left-arrow {
    left: 0px;
}
.right-arrow {
    right: 0px;
}
#imgg{
    padding: auto;width: 400px; height: 200px;
}
#imggg{
    width: 6em;height: 4em;
}
#cross-left{
    background-image: url("");background-size: cover; width: 20px;height: 20px;
}
#cross-right{
    background-image: url("");background-size: cover;width: 20px;height: 20px;
}
tbody{
    font-size: 18px;font-weight: 600;
}
#img{
    width: 150px; height: 100px;
}
#center1{
    width: 120px;
}
#center2{
    width: 120px;
}
#des{
    text-align: left;
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
    <div class="carousel">
        <button class="arrow left-arrow" onclick="prevSlide()">&#9664;</button>
        <div class="slides">
            <c:forEach var="festival" items="${festivalList}">
                <c:choose>
                    <c:when test="${festival.festivalName == '태안 빛축제' || 
                                   festival.festivalName == '부평풍물대축제' || 
                                   festival.festivalName == '제주광어대축제' || 
                                   festival.festivalName == '원주용수골가을꽃축제' || 
                                   festival.festivalName == '송월동 동화마을 코스튬 페스티벌'}">
                        <div class="slide ${festival.festivalName == '태안 빛축제' ? 'active' : ''}">
                            <a href="detailFes?festivalNo=${festival.festivalNo}">
                                <img src="${festival.fesImg}" alt="${festival.festivalName}" id="imgg">
                            </a>
                            <div class="description">${festival.festivalName}</div>
                        </div>
                    </c:when>
                </c:choose>
            </c:forEach>
        </div>
        <button class="arrow right-arrow" onclick="nextSlide()">&#9654;</button>
    </div>
    <div id="second">
        <h1 id="second-1"><span>홍보 등록 게시판-</span><span id="color">이런 축제도 있어요!</span></h1>
        <div id="second-2">
            <%-- 로그인 시에만 글쓰기 버튼 표시 --%>
            <c:if test = "${ not empty loginMember }">
            	<a href="writePage" class="write" >내 작성글 보기</a>
            	<a href="writecontext" class="write" >홍보글 등록</a>
            </c:if>
        </div>
    </div>

    <div>
        <c:if test="${not empty festivalList}">
    	<table>
        <thead>
            <tr>
                <th id="center1">번호</th>
                <th id="center">사진</th>
                <th id="center">축제 이름</th>
                <th id="center2">시작 날짜</th>
                <th id="center2">종료 날짜</th>
                <th id="center">설명</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="festival" items="${festivalList}" varStatus="status">
                <tr style="cursor: pointer; background-color: ${status.index % 2 == 0 ? '#d4d5fc8a' : '#fff9ff'}" 
                    onclick="location.href='detailFes?festivalNo=${festival.festivalNo}'">
                    <td>${festival.festivalNo}</td>
                    <td>
                        <img src="${festival.fesImg}" id="img" />
                    </td>
                    <td>${festival.festivalName}</td>
                    <td id="center">${festival.openDate}</td>
                    <td id="center">${festival.closeDate}</td>
                    <td id="des">${festival.fesDescription}</td>
                </tr>
            </c:forEach>
        </tbody>
		 </table>
		</c:if>		
		<c:if test="${empty festivalList}">
		    <p>축제 목록이 없습니다.</p>
		</c:if>


    </div>

    <script>
        let currentSlide = 1;
		let currentPage = 1;
		const totalPages = 5;

	function showSlide(index) {
    const slides = document.querySelectorAll('.slide');
    slides.forEach((slide, i) => {
        slide.classList.remove('active');
        if (i === index) {
            slide.classList.add('active');
        }
    });
	}
	function nextSlide() {
	    const slides = document.querySelectorAll('.slide');
	    currentSlide = (currentSlide + 1) % slides.length;
	    showSlide(currentSlide);
	}
	function prevSlide() {
	    const slides = document.querySelectorAll('.slide');
	    currentSlide = (currentSlide - 1 + slides.length) % slides.length;
	    showSlide(currentSlide);
	}
	function showPage(page) {
	    const pageNumberElement = document.getElementById('page-number');
	    pageNumberElement.textContent = page;
	    console.log(`페이지 ${page} 로드`);
	}
	function nextPage() {
	    if (currentPage < totalPages) {
	        currentPage++;
	        showPage(currentPage);
	    }
	}
	function prevPage() {
	    if (currentPage > 1) {
	        currentPage--;
	        showPage(currentPage);
	    }
	}
    </script>
    <script>
    	$(function(){
    		
    		<!-- 게시글 목록의 행을 클릭했을 때 detail 요청을 하도록 -->
    		$("#boardList>tbody>tr").click(function(){
    			location.href = 'detail?bno=' + $(this).children(".bno").text();
    		});
    	});
    </script>

<jsp:include page="../common/footer.jsp"/>
</body>
</html>