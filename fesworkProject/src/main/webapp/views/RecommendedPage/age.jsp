<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>연령대 추천 페이지</title>
  <link rel="stylesheet" href="age.css">
   <script src="age.js"></script>
</head>

<body>

  <div class="wrap">
    <header>
      <nav>
        <a href="#">소개</a>
        <a href="#">축제정보</a>
        <a href="#">축제홍보</a>
        <a href="#">로그인</a>
      </nav>
    </header>
    <div id="content">
      <div id="content1"></div>

      <div id="content2">

        <div class="container">
          <div class="recommendation">
            <h2>나만의 맞춤 축제</h2>
            <p>나의 click에 따른 맞춤 축제를 추천해드립니다.<br> (참고: 로그인 후 이용하시면 추천한 축제를 재추천받을 수 없습니다.)</p>
            <div class="festival-grid">
              <table>
                <tr>
                  <td scope="col"><img src="" alt=""></td>
                  <td scope="col"><img src="" alt="" /></td>
                  <td scope="col"><img src="" alt="" /></td>
                </tr>
                <tr>
                  <td scope="col"><img src="" alt=""></td>
                  <td scope="col"><img src="" alt="" /></td>
                  <td scope="col"><img src="" alt="" /></td>
                </tr>
                <tr>
                  <td scope="col"><img src="" alt=""></td>
                  <td scope="col"><img src="" alt="" /></td>
                  <td scope="col"><img src="" alt="" /></td>
                </tr>
              </table>
            </div>
            <div class="festival-item">
              <table>
                <tr>
                  <td scope="col"><img src="" alt=""></td>
                  <td scope="col"><img src="" alt="" /></td>
                  <td scope="col"><img src="" alt="" /></td>
                </tr>
                <tr>
                  <td scope="col"><img src="" alt=""></td>
                  <td scope="col"><img src="" alt="" /></td>
                  <td scope="col"><img src="" alt="" /></td>
                </tr>
                <tr>
                  <td scope="col"><img src="" alt=""></td>
                  <td scope="col"><img src="" alt="" /></td>
                  <td scope="col"><img src="" alt="" /></td>
                </tr>
              </table>
            </div>
            <div class="festival-item">
              <img src="" alt="">
              <h3></h3>
              <p></p>
            </div>
          </div>
          <br>
          <button class="select-btn">재선택</button>
        </div>
        <div class="text1">
          <div class="recent-festivals">
            <h2>연령대 최근 선호 축제:</h2>
          </div>
          <div id="footer1">
            <a href="gender.jsp">성별</a> |
            <a href="age.jsp">연령대</a> |
            <a href="city.jsp">도시</a> |
            <a href="theme.jsp">테마</a>
          </div>
        </div>
        <div class="container">
          <div class="festival-grid">
            <div class="festival-item">
              <div class="gender-filter">
                <span class="active">#미성년자</span>
                <span>#성인</span>

              </div>
            </div>
          </div>
          <div class="festival-grid" id="favorite-area">
            <div class="festival-item">
              <td scope="col"><img
                  src=""
                  alt="" /></td>
            </div>

            <div class="festival-item">
              <table>
                <tr>
                  <td scope="col"><img
                      src=""
                      alt=""></td>
                </tr>
                <tr>
                  <td></td>
                </tr>

                <tr>
                  <td></td>
                </tr>
              </table>
            </div>
            <div class="festival-item">
              <table>
                <tr>
                  <td scope="col"><img
                      src=""
                      alt=""></td>
                </tr>
                <tr>
                  <td></td>
                </tr>

                <tr>
                  <td></td>
                </tr>
              </table>

            </div>
