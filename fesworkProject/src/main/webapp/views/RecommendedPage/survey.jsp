<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>축제 콕콕</title>
    <link rel="stylesheet" href="survey.css">
</head>
<body>
    <div class="wrap">
      
        <div class="header">
            <div class="navi">
                <img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_e2b3015d-7660-4355-8d27-e0b67ea23ef9_1.png" width="80px" height="80px">
                <a href="#">소개</a>
                <a href="#">축제정보</a>
                <a href="#">축제홍보</a>
            </div>
            <div class="search">
                <input type="text" placeholder="검색">
                <button>검색</button>
            </div>
            <div>
                <a href="#">로그인</a>
            </div>
        </div>
        
        <section id="festival-intro">
            <div id="a">
                <main>
                    <h1>축제 콕콕</h1>
                    <p>페스니코에서 추천해주는 나를 위한 축제는?<br>나의 관심사와 나의 취향을 반영해 사용자 데이터를 분석하여 알맞은 축제 정보를 제공합니다.</p>
                </main>
            </div>
            <div id="b">
                <table>
                    <tr>
                        <td scope="col"><img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_143fc344-bb22-43aa-bb05-940710dd3fcd_1.jpg" alt=""></td>
                        <td scope="col"><img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_910bb144-bf74-4eee-9e91-8fbcbaf302ac_1.JPG" alt="" /></td>
                        <td scope="col"><img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_4e70ff58-cba3-4484-8e2d-0704feac6136_1.jpg" alt="" /></td>
                    </tr>
                    <tr>
                        <td>송도 축제</td>
                        <td>보령머드 축제</td>
                        <td>핑크뮬리축제</td>
                    </tr>
                    <tr>
                        <td>인천 연수구</td>
                        <td>충남 보령시</td>
                        <td>제주 서귀포시</td>
                    </tr>
                </table>
            </div>
        </section>

        <section id="selection-header">
            <div id="c">
                <header>
                    <nav>
                        <p style="color: white;">나를 선택해주세요 pick me!</p>
                    </nav>
                </header>
            </div>
        </section>

        <section id="festival-form">
            <div id="d">
                <form id="festivalForm" action="FestivalRecommendationServlet" method="post">
                    <label for="gender">성별</label><br>
                    <input type="radio" name="gender" value="여" required> 여
                    <input type="radio" name="gender" value="남" required> 남
                    <br>
                    <label for="ageGroup">연령대</label><br>
                    <input type="radio" name="ageGroup" value="미성년자" required> 미성년자
                    <input type="radio" name="ageGroup" value="성인" required> 성인
                    <br>
                    <label for="preferredTime">희망시기</label><br>
                    <select name="preferredTime" required>
                        <option value="1월">1월</option>
                        <option value="2월">2월</option>
                        <option value="3월">3월</option>
                        <option value="4월">4월</option>
                        <option value="5월">5월</option>
                        <option value="6월">6월</option>
                        <option value="7월">7월</option>
                        <option value="8월">8월</option>
                        <option value="9월">9월</option>
                        <option value="10월">10월</option>
                        <option value="11월">11월</option>
                        <option value="12월">12월</option>
                    </select>
                    <br>
                    <label for="preferredLocation">희망여행지</label><br>
                    <select name="preferredLocation" required>
                        <option value="서울">서울</option>
                        <option value="부산">부산</option>
                        <option value="제주">제주도</option>
                        <option value="강원도">강원도</option>
                        <option value="충청남도">충청남도</option>
                        <option value="충청북도">충청북도</option>
                        <option value="전라남도">전라남도</option>
                        <option value="전라북도">전라북도</option>
                        <option value="경상남도">경상남도</option>
                        <option value="경상북도">경상북도</option>
                        <option value="경기도">경기도</option>
                        <option value="대구">대구</option>
                        <option value="대전">대전</option>
                    </select>
                    <br>
                    <label for="theme">축제테마</label><br>
                    <input type="checkbox" name="theme" value="전통"> 전통
                    <input type="checkbox" name="theme" value="음식"> 음식
                    <input type="checkbox" name="theme" value="문화"> 문화
                    <input type="checkbox" name="theme" value="자연"> 자연
                    <br>
                </form>
            </div>
            <div id="e">
                <button type="submit" form="festivalForm" style="color: yellow;">추천</button>
                <button type="reset" form="festivalForm" style="color: yellow;">재선택</button>
            </div>
        </section>

        <div id="content3"></div>
        <br><br>
      
        <footer>
            <p>㈜KH컴퍼니 | 사업자등록번호: 2077
                문의: imoji126@naver.com
                서비스 이용 문의: 09:00 - 09:00
                개인정보처리방침 | 이용약관</p>
        </footer>
    
    </div>

    <script src="script.js"></script>
</body>
</html>