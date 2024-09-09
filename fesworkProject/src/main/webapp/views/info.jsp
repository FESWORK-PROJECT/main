<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400;700&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<style>
#part1{
    color: yellow;
    text-align: center;
    margin-top: 50px;
}
#write {
    margin-top: auto;
    margin-bottom: auto;
    margin-right: 10px;
    width: 100px;
    height: 40px;
    background-color: yellow;
    border-radius: 10px;
    border: none;
    cursor: pointer;
    
}
#title{
    width: 600px;
}
#second{
    
    justify-content: space-between;
    display: flex;
    background-color: lightgreen;
    margin-top: 50px;
    color: white;
    margin-bottom: 20px;
}
#color{
    color: yellow;
}
#color1{
    background-color: #88D66C;
    border-top: 2px solid black; border-bottom: 2px solid black;
}
#color2{
    background-color: #bbecad;
}
#color3{
    background-color: #88e66e;
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
    border: 2px solid #88D66C;
    width: 20em;
    height: 4em;
    border-radius: 10px 0px 0px 10px;
}
#bottom-search2{
    bottom: 0px;
    border: 2px solid #88D66C;
    width: 5em;
    height: 4.4em;
    border-radius: 0px 10px 10px 0px;
    cursor: pointer;
}
#second-2{
    display: flex;
}
#img3{
    width: 100px;
    height: 25px;
}

#pagination {
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 20px 0;
}

#page-number {
    font-size: 20px;
    margin: 0 10px; /* 숫자 좌우로 공간 확보 */
    display: inline-block; /* 숫자와 버튼이 한 줄에 있도록 설정 */
}

.pagination-button {
    background-color: #88D66C;
    color: white;
    border: none;
    cursor: pointer;
    padding: 10px;
    font-size: 18px;
    border-radius: 5px;
    display: inline-block; /* 버튼이 숫자와 한 줄에 있도록 설정 */
}

.pagination-button:hover {
    background-color: #76c060;
}
#ggg{
    margin-left: 30px;
    margin-right: 20px;
}
#kkk{
    margin-top: 28px;
}
.carousel {
    margin-top: 200px;
    position: relative;
    width: 400px; /* 원하는 너비 설정 */
    margin: 0 auto; /* 중앙 정렬 */
    text-align: center; /* 이미지와 텍스트 중앙 정렬 */
}
.description{
    border-radius: 10px;
    background-color: #88D66C;
    margin-top: 20px;
    margin-bottom: 20px;
    color: yellow;
    padding: auto;
    font-size: 20px;
}

.slide {
    display: none;
    opacity: 0;
    transition: opacity 0.5s ease-in-out;
}

.slide.active {
    display: block;
    opacity: 1;
}
.arrow {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background-color: rgba(0, 0, 0, 0.5);
    color: white;
    border: none;
    cursor: pointer;
}
.left-arrow {
    left: 0px;
}
.right-arrow {
    right: 0px;
}
#imgg{
    padding: auto;
    width: 400px; height: 200px;
}
#imggg{
    width: 6em;height: 4em;
}
#pagination a,
#pagination em {
    font-size: 25px;
}
#cross-left{
    background-image: url("../img/images.png");
    background-size: cover;
    width: 20px;
    height: 20px;
}
#cross-right{
    background-image: url("../img/images1.png");
    background-size: cover;
    width: 20px;
    height: 20px;
}
</style>
</head>
<body>
<jsp:include page="common/header.jsp"/>
    <div class="carousel">
        <button class="arrow left-arrow" onclick="prevSlide()">&#9664;</button>
        <div class="slides">
            <div class="slide active">
                <div class="description">허완님이 홍보한</div>
                <a href="#"><img src="../img/축제1.jfif" alt="Image 1" id="imgg"></a>
                <div class="description">고양 푸드 앤 비어 페스티벌</div> <!-- 설명 추가 -->
            </div>
            <div class="slide">
                <div class="description">김정현님이 홍보한</div>
                <a href="#"><img src="../img/축제2.jfif" alt="Image 2" id="imgg"></a>
                <div class="description">턴업</div> <!-- 다른 설명 추가 -->
            </div>
            <div class="slide">
                <div class="description">양민욱님이 홍보한</div>
                <a href="#"><img src="../img/축제3.jfif" alt="Image 2" id="imgg"></a>
                <div class="description">턴다운</div> <!-- 다른 설명 추가 -->
            </div>
            <div class="slide">
                <div class="description">최종군님이 홍보한</div>
                <a href="#"><img src="../img/축제4.jfif" alt="Image 2" id="imgg"></a>
                <div class="description">턴레프트</div> <!-- 다른 설명 추가 -->
            </div>
            <div class="slide">
                <div class="description">김인창님이 홍보한</div>
                <a href="#"><img src="../img/축제5.jfif" alt="Image 2" id="imgg"></a>
                <div class="description">턴라이트</div> <!-- 다른 설명 추가 -->
            </div>
            <!-- 다른 슬라이드들도 마찬가지로 설명 추가 -->
        </div>
        <button class="arrow right-arrow" onclick="nextSlide()">&#9654;</button>
    </div>
    <div id="second">
        <h1 id="second-1"><span>홍보 등록 게시판-</span><span id="color">이런 축제도 있어요!</span></h1>
        <div id="second-2">
            <button id="write"><a href="../write/writecheck.html">내 작성글 보기</a></button>
            <button id="write"><a href="../write/write.html">홍보글 등록</a></button>
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
                    <th id="img3"><img src="../img/축제1.jfif" id="imggg"></th>
                    <th>구리시 어쩌구 저쩌구</th>
                    <th>허완</th>
                    <th>2024-08-13</th>
                    <th>18</th>
                    <th>18</th>
                </tr>
                <tr id="color3">
                    <th>2</th>
                    <th id="img3"><img src="../img/축제2.jfif" id="imggg"></th>
                    <th>서울시 어쩌구 저쩌구</th>
                    <th>김인창</th>
                    <th>2024-09-03</th>
                    <th>18</th>
                    <th>18</th>
                </tr>
                <tr id="color2">
                    <th>3</th>
                    <th id="img3"><img src="../img/축제3.jfif" id="imggg"></th>
                    <th>서울시 동작구</th>
                    <th>양민욱</th>
                    <th>2024-09-02</th>
                    <th>18</th>
                    <th>18</th>
                </tr>
                <tr id="color3">
                    <th>3</th>
                    <th id="img3"><img src="../img/축제3.jfif" id="imggg"></th>
                    <th>서울시 동작구</th>
                    <th>양민욱</th>
                    <th>2024-09-02</th>
                    <th>18</th>
                    <th>18</th>
                </tr>
                <tr id="color2">
                    <th>3</th>
                    <th id="img3"><img src="../img/축제3.jfif" id="imggg"></th>
                    <th>서울시 동작구</th>
                    <th>양민욱</th>
                    <th>2024-09-02</th>
                    <th>18</th>
                    <th>18</th>
                </tr>
                <tr id="color3">
                    <th>3</th>
                    <th id="img3"><img src="../img/축제3.jfif" id="imggg"></th>
                    <th>서울시 동작구</th>
                    <th>양민욱</th>
                    <th>2024-09-02</th>
                    <th>18</th>
                    <th>18</th>
                </tr>
                <tr id="color2">
                    <th>3</th>
                    <th id="img3"><img src="../img/축제3.jfif" id="imggg"></th>
                    <th>서울시 동작구</th>
                    <th>양민욱</th>
                    <th>2024-09-02</th>
                    <th>18</th>
                    <th>18</th>
                </tr>
                <tr id="color3">
                    <th>3</th>
                    <th id="img3"><img src="../img/축제3.jfif" id="imggg"></th>
                    <th>서울시 동작구</th>
                    <th>양민욱</th>
                    <th>2024-09-02</th>
                    <th>18</th>
                    <th>18</th>
                </tr>
            </tbody>
        </table>

    </div>
    <div id="pagination">
        <a class="cross-wind" id="cross-left" href="">&nbsp;</a>
        <em>1</em>
        <a href="../promo/promo2.html">2</a>
        <a href="../promo/promo3.html">3</a>
        <a href="../promo/promo4.html">4</a>
        <a href="../promo/promo5.html">5</a>
        <a class="cross-wind" id="cross-right" href="../promo/promo2.html">&nbsp;</a>
    </div>
    <script>
        let currentSlide = 0;
let currentPage = 1;
const totalPages = 5;  // 총 페이지 수를 여기에 설정합니다.

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

    // 페이지 번호에 따라 다른 데이터를 로드하거나 표시합니다.
    // 이 예시에서는 단순히 페이지 번호를 표시합니다.
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


<jsp:include page="common/footer.jsp"/>
</body>
</html>