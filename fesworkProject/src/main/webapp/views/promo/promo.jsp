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
    color: rgb(120, 120, 255);
    text-align: center;
    font-size: 14px;
    text-decoration: none;
    margin-top: auto;
    margin-bottom: auto;
    margin-right: 10px;
    width: 140px;
    height: 40px;
    background-color: rgb(255, 255, 154);
    border-radius: 10px;
    border: none;
    cursor: pointer;
}
#title{
    width: 600px;
}
#second{
    text-decoration: none;
    justify-content: space-between;
    display: flex;
    background-color: rgb(253, 161, 253);
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
    margin-left: 20px;
}
table {
    border-collapse: collapse;
    width: 100%;
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
    border-radius: 10px;background-color: #35096ebb;margin-top: 20px;
    margin-bottom: 20px;color: yellow;padding: auto;font-size: 20px;
}
.slide {
    display: none;opacity: 0;transition: opacity 0.5s ease-in-out;
}
.slide.active {
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
#pagination a,
#pagination em {
    font-size: 25px;
}
#cross-left{
    background-image: url("");background-size: cover; width: 20px;height: 20px;
}
#cross-right{
    background-image: url("");background-size: cover;width: 20px;height: 20px;
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
    <div class="carousel">
        <button class="arrow left-arrow" onclick="prevSlide()">&#9664;</button>
        <div class="slides">
            <div class="slide active">
                <div class="description">${ loginMember.memberId }</div>
                <a href="#"><img src="" alt="Image 1" id="imgg"></a>
                <div class="description">고양 푸드 앤 비어 페스티벌</div> <!-- 설명 추가 -->
            </div>
            <div class="slide">
                <div class="description">${ loginMember.memberId }</div>
                <a href="#"><img src="" alt="Image 2" id="imgg"></a>
                <div class="description">턴업</div> <!-- 다른 설명 추가 -->
            </div>
            <div class="slide">
                <div class="description">${ loginMember.memberId }</div>
                <a href="#"><img src="" alt="Image 2" id="imgg"></a>
                <div class="description">턴다운</div> <!-- 다른 설명 추가 -->
            </div>
            <div class="slide">
                <div class="description">${ loginMember.memberId }</div>
                <a href="#"><img src="" alt="Image 2" id="imgg"></a>
                <div class="description">턴레프트</div> <!-- 다른 설명 추가 -->
            </div>
            <div class="slide">
                <div class="description">${ loginMember.memberId }님이 홍보한</div>
                <a href="#"><img src="" alt="Image 2" id="imgg"></a>
                <div class="description">턴라이트</div> <!-- 다른 설명 추가 -->
            </div>
        </div>
        <button class="arrow right-arrow" onclick="nextSlide()">&#9654;</button>
    </div>
    <div id="second">
        <h1 id="second-1"><span>홍보 등록 게시판-</span><span id="color">이런 축제도 있어요!</span></h1>
        <div id="second-2">
            <%-- 로그인 시에만 글쓰기 버튼 표시 --%>
            <c:if test = "${ not empty loginMember }">
            	<a href="writecheck.jsp" class="write" >내 작성글 보기</a>
            	<a href="promowrite.jsp" class="write" >홍보글 등록</a>
            </c:if>
        </div>
    </div>

    <div>
        <table id="docu" border="">
            <tbody>
                <tr id="color1">
                    <th >번호</th>
                    <th id="img3">이미지</th>
                    <th id="title">제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>추천수</th>
                    <th>조회수</th>
                </tr>
                <tr id="color2">
                    <th>1</th>
                    <th id="img3"><img src="" id="imggg"></th>
                    <th>구리시 어쩌구 저쩌구</th>
                    <th>허완</th>
                    <th>2024-08-13</th>
                    <th>25</th>
                    <th>1855</th>
                </tr>
                <tr id="color3">
                    <th>2</th>
                    <th id="img3"><img src="" id="imggg"></th>
                    <th>서울시 어쩌구 저쩌구</th>
                    <th>김인창</th>
                    <th>2024-09-03</th>
                    <th>20</th>
                    <th>1444</th>
                </tr>
                <tr id="color2">
                    <th>3</th>
                    <th id="img3"><img src="" id="imggg"></th>
                    <th>서울시 동작구</th>
                    <th>양민욱</th>
                    <th>2024-09-02</th>
                    <th>18</th>
                    <th>18</th>
                </tr>
                <tr id="color3">
                    <th>3</th>
                    <th id="img3"><img src="" id="imggg"></th>
                    <th>서울시 동작구</th>
                    <th>양민욱</th>
                    <th>2024-09-02</th>
                    <th>18</th>
                    <th>18</th>
                </tr>
                <tr id="color2">
                    <th>3</th>
                    <th id="img3"><img src="" id="imggg"></th>
                    <th>서울시 동작구</th>
                    <th>양민욱</th>
                    <th>2024-09-02</th>
                    <th>18</th>
                    <th>18</th>
                </tr>
                <tr id="color3">
                    <th>3</th>
                    <th id="img3"><img src="" id="imggg"></th>
                    <th>서울시 동작구</th>
                    <th>양민욱</th>
                    <th>2024-09-02</th>
                    <th>18</th>
                    <th>18</th>
                </tr>
                <tr id="color2">
                    <th>3</th>
                    <th id="img3"><img src="" id="imggg"></th>
                    <th>서울시 동작구</th>
                    <th>양민욱</th>
                    <th>2024-09-02</th>
                    <th>18</th>
                    <th>18</th>
                </tr>
                <tr id="color3">
                    <th>3</th>
                    <th id="img3"><img src="" id="imggg"></th>
                    <th>서울시 동작구</th>
                    <th>양민욱</th>
                    <th>2024-09-02</th>
                    <th>18</th>
                    <th>18</th>
                </tr>
            </tbody>
        </table>

    </div>
    <div id="pagingArea">
                <ul class="pagination">
                	<c:choose>
                		<c:when test="${ pi.currentPage eq 1 }">
	                    	<li class="page-item disabled">
	                    		<a href="#" class="page-link">Prev</a>
	                    	</li>
	                    </c:when>
	                    <c:otherwise>
	                    	<li class="page-item">
	                    		<a href="list?cpage=${ pi.currentPage - 1 }" class="page-link">Prev</a>
	                    	</li>
	                    </c:otherwise>
                    </c:choose>
                    <c:forEach var="i" begin="${ pi.startPage }" end="${ pi.endPage }">
                    	<li class="page-item">
                    		<a href="list?cpage=${ i }" class="page-link">${ i }</a>
                    	</li>
                    </c:forEach>
                    <c:choose>
                		<c:when test="${ pi.currentPage eq pi.maxPage }">
                			<li class="page-item disabled">
                				<a href="#" class="page-link">Next</a>
                			</li>
                		</c:when>
                		<c:otherwise>
                			<li class="page-item">
                				<a href="list?cpage=${ pi.currentPage + 1 }" class="page-link">Next</a>
                			</li>
                		</c:otherwise>
                    </c:choose>
                </ul>
            </div>
    <script>
        let currentSlide = 0;
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

<jsp:include page="../common/footer.jsp"/>
</body>
</html>