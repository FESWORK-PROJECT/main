<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>테마별 추천 페이지</title>
  <link rel="stylesheet" href="/feswork/views/RecommendedPage/theme.css"/>
   <script src="theme.js"></script>
   
</head>

<body>
	<%@ include file="../common/header.jsp" %>

  <div class="wrap">
    
    <div id="content">
      <div id="content1"></div>

      <div id="content2">
        <div class="container">
          <div class="recommendation">
            <h2>나만의 맞춤 축제</h2>
            <p>나의 click에 따른 맞춤 축제를 추천해드립니다.<br> (참고: 로그인 후 이용하시면 추천한 축제를 재추천받을 수 없습니다.)</p>
            
            <!-- 상단 3개 테이블 -->
            <div class="festival-grid" id="favorite-area-top">
            <c:forEach items="${ list }" var="festival">
              <div class="festival-item">
                <table>
                  <tr>
                    <td>
                      <div style="width: 200px; height: 200px;">
                      	<img style="width: 100%; height: 100%;" src="${festival.fesImage }" alt="" />
                      </div>
                      
                      <p>${ festival.festivalName }</p>
                      <p></p>
                    </td>
                  </tr>
                </table>
              </div>
              </c:forEach>
              
            </div>
          </div>

          <br>
          <button class="select-btn">재선택</button>
        </div>
        
        <div class="text1">
          <div class="recent-festivals">
            <h2>테마 최근 선호 축제:</h2>
          </div>
          <div id="footer1">
            <a href="<%= contextPath %>/views/RecommendedPage/gender.jsp">성별</a> |
            <a href="<%= contextPath %>/views/RecommendedPage/age.jsp">연령대</a> |
            <a href="<%= contextPath %>/views/RecommendedPage/city.jsp">도시</a> |
            <a href="<%= contextPath %>/views/RecommendedPage/theme.jsp">테마</a>
          </div>
        </div>
        
        <div class="gender-filter">
           <span class="active">#전통</span>
          <span>#음식</span>
          <span>#문학</span>
          <span>#체험</span>
      
         

        </div>

        <div class="container">
          <!-- 하단 6개 테이블 -->
          <div class="festival-grid" id="favorite-area-bottom">
            <div class="festival-item">
              
              
              <table>
                <tr>
                  <td>
                    <img src="" alt=""/>
                    <p></p>
                    <p></p>
                  </td>
                </tr>
              </table>
            </div>
            <div class="festival-item">
              <table>
                <tr>
                  <td>
                    <img src="" alt=""/>
                    <p></p>
                    <p></p>
                  </td>
                </tr>
              </table>
            </div>
            <div class="festival-item">
              <table>
                <tr>
                  <td>
                    <img src="" alt=""/>
                    <p></p>
                    <p></p>
                  </td>
                </tr>
              </table>
            </div>
            <div class="festival-item">
              <table>
                <tr>
                  <td>
                    <img src="" alt=""/>
                    <p></p>
                    <p></p>
                  </td>
                </tr>
              </table>
            </div>
            <div class="festival-item">
              <table>
                <tr>
                  <td>
                    <img src="" alt=""/>
                    <p></p>
                    <p></p>
                  </td>
                </tr>
              </table>
            </div>
            <div class="festival-item">
              <table>
                <tr>
                  <td>
                    <img src="" alt=""/>
                    <p></p>
                    <p></p>
                  </td>
                </tr>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>

    <footer>
      <p>KH 정보교육원 ☎ 찾아오시는 길: KH 2관 7층</p>
    </footer>
  </div>

</body>

</html>
