<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FES WORK</title>
    <style>

        .search_box_wrap {    display: flex;
             flex-wrap: wrap; /* 여러 줄로 넘어가도록 설정 */
            gap: 16px; /* 요소 사이의 간격 */}

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        .header {
            background-color: #6CC04A;
            padding: 20px;
            text-align: center;
            color: white;
            font-size: 24px;
        }

        .container {
            padding: 20px;
        }

        .search-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .search-bar select, .search-bar input {
            padding: 10px;
            font-size: 16px;
            margin-right: 10px;
        }

        .search-bar button {
            padding: 10px 20px;
            background-color: #6CC04A;
            color: white;
            border: none;
            cursor: pointer;
        }

        .filters {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 20px;
        }

        .filters a {
            margin-left: 15px;
            color: #6CC04A;
            text-decoration: none;
            cursor: pointer;
        }

        .festival-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 20px;
        }

        .festival-grid a {
            text-decoration: none;
            color: black;
        }

        .festival-grid img {
            width: 100%;
            height: auto;
            display: block;
        }

        .footer {
            background-color: #6CC04A;
            color: white;
            text-align: center;
            padding: 10px 0;
            margin-top: 30px;
        }

        .btn_reset,
        .btn_search {
         padding: 5px 5px;
        border: none;
        background-color: #6CC04A; /* 예시 색상 */
        color: white;
        cursor: pointer;
        font-size: 15px;
}
        fieldset{border: none;}

        .blind{ display: none;}
       
       
        #fesvival-post1{
            display: flex; 
            height:250px;
            justify-content: center; /* 가로 중앙 정렬 */
        }
        #fesvival-post1 div{
            background-size: cover;
            width: 210px;     
            margin: 10px;
            display: block;
        }

        #fesvival-post2{
            display: grid;
            grid-template-columns: repeat(4, 1fr); /* 4개의 열 */
            margin-left: 5px;
            justify-content: space-between; /* 가로로 간격을 조절 */
            gap: 10px; /* 요소 간의 간격 설정 */
            padding: 10px; /* 웹사이트 벽과의 거리 설정 */
            margin: 0 auto; /* 중앙 정렬 */
            max-width: 1200px; /* 컨테이너의 최대 너비 설정 */

            /* overflow: hidden;
            position: relative; */
        }

        #fesvival-post2 div > div {
            background-size: cover;
            width: 150px;  
            height: 200px;
            padding: 40px;
        }
        #morediv {
            display: flex;
            justify-content: center; /* 가로 중앙 정렬 */
            align-items: center;     /* 세로 중앙 정렬 */
            height: 100vh;           /* 화면 전체 높이 설정 */
        }
        #more {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            background-color: #6CC04A;
            color: white;
            
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            color: white;
            border: none;
            cursor: pointer;
            text-align: center;
        }
        ul li{
            list-style-type: none;
        }
        .festival_ul_top{
   
            display: flex;
            justify-content: right;
        }
        .tab_area li {
        display: inline-block; /* li 태그를 일렬로 배치 */
       /* margin-right: 10px; */ /* 간격을 위한 여백 설정 */
        }
        .festival_ul_top{
            padding-right: 450px;
        }
        .tab_area li button{
            border: none;
            background-color: #6CC04A;
            color: white;
            font-size: larger;
        }
      
        .select_box select, .select_date select {
                    width: 150px;
                    padding: 10px;
                    font-size: 16px;
                    border-radius: 5px;
                    border: 1px solid #ccc;
                    background-color: #f8f8f8;
                    appearance: none; 
                    cursor: pointer;
                    background-image: url('/resources/img/cate_ico.svg'); 
                    background-repeat: no-repeat;
                    background-position: right 10px center;
                    background-size: 20px;
                    }

                    /* Wrapper for select elements */
                    .select_box, .select_date {
                        position: relative;
                      margin-bottom: 20px;
                    }

            .select_box::after, .select_date::after {
                content: "";
                position: absolute;
                right: 15px;
                top: 50%;
                transform: translateY(-50%);
                pointer-events: none;
                border: 6px solid transparent;
                border-top-color: #333; 
              
            }

            .select_box select:hover, .select_date select:hover, 
            .select_box select:focus, .select_date select:focus {
                border-color: #6CC04A;
                outline: none;
            }
            select {
                outline: none;
            }
            select option {
                padding: 10px;
                font-size: 16px;
                background-color: #fff;
            }

            #searchinput {
            border: none;
            width: 10px;
            height: 30px;
            padding-left: 40px; /* 이미지와 텍스트가 겹치지 않도록 여백 설정 */
            
            background-color: #6CC04A;
            
            background-image: url("resources/free-icon-magnifier-71403.png");
            background-size: 20px 20px; /* 이미지 크기를 원하는 크기로 조절 */
            background-position: 10px center; /* 이미지 위치를 input 내부에서 설정 */
            background-repeat: no-repeat; /* 이미지를 반복하지 않도록 설정 */
            }

            .search_box_wrap {
                display: flex;
                justify-content: center;
       
                gap: 10px; /* 요소들 간의 간격 조절 */
            }
            .btn_box {

                align-items: center;
            }
            #more_festival{
                display: grid;
                 grid-template-columns: repeat(4, 1fr); /* 4개의 열 */
                margin-left: 5px;
                 justify-content: space-between; /* 가로로 간격을 조절 */
                    gap: 10px; /* 요소 간의 간격 설정 */
                 padding: 10px; /* 웹사이트 벽과의 거리 설정 */
                margin: 0 auto; /* 중앙 정렬 */
            max-width: 1200px; /* 컨테이너의 최대 너비 설정 */
            }

            #more_festival div > div {
            background-size: cover;
            width: 150px;  
            height: 200px;
            padding: 40px;
        }
    
        #more_festival {
        display: none;
        margin: 0;
        padding: 0;
      }

     #morediv {
     margin-bottom: 10px;
    }

    .footer {
    margin-top: 10px;
    padding-top: 10px;
    }

                </style>

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    </head>
<body>

 	<jsp:include page="../common/header.jsp"/>
         

            <br>

    <main role="main" id="mainTab" >
        <div class="wrap">
            <!--조건부 검색 section : 컨텐츠 그룹화 -->
            <section class="search_slide_wrap" role="region">
                <div class="inner">
                    <div class="blind">검색영역</div>
                    
                    <form action="" name="festivalSearch" id="festivalSearch">
                        <fieldset>
                            <legend class="blind">축제 검색</legend>
                        <div class="search_box_wrap">
                            <div class="select_date">
                                <label for="search_Date" style="display: none;">시기선택</label>
                                <select name="searchDate" id="searchDate">
                                        <option value="">시기</option>
                                        <option value="A">개최중</option>
                                        <option value="B">개최예정</option>
                                        <option value="01">1월</option>
                                        <option value="02">2월</option>
                                        <option value="03">3월</option>
                                        <option value="04">4월</option>
                                        <option value="05">5월</option>
                                        <option value="06">6월</option>
                                        <option value="07">7월</option>
                                        <option value="08">8월</option>
                                        <option value="09">9월</option>
                                        <option value="10">10월</option>
                                        <option value="11">11월</option>
                                        <option value="12">12월</option>
                                </select>
                            </div>
                            
                            <div class="select_box select_area">
                                <label for="searchArea"style="display: none;">지역 선택</label>
                                <select name="searchArea" id="searchArea" title="지역 선택">
                                    <option value="">지역</option>
                                    
                                        <option value="1">서울</option>
                                    
                                        <option value="2">인천</option>
                                    
                                        <option value="3">대전</option>
                                    
                                        <option value="4">대구</option>
                                    
                                        <option value="5">광주</option>
                                    
                                        <option value="6">부산</option>
                                    
                                        <option value="7">울산</option>
                                    
                                        <option value="8">세종시</option>
                                    
                                        <option value="31">경기도</option>
                                    
                                        <option value="32">강원특별자치도</option>
                                    
                                        <option value="33">충청북도</option>
                                    
                                        <option value="34">충청남도</option>
                                    
                                        <option value="35">경상북도</option>
                                    
                                        <option value="36">경상남도</option>
                                    
                                        <option value="37">전북특별자치도</option>
                                    
                                        <option value="38">전라남도</option>
                                    
                                        <option value="39">제주도</option>
                                </select>
                                </div>

                                <div class="select_box select_cate"
                                style="background-image:url(/kfes/resources/img/cate_ico.svg)" ;>
                               <label for="searchCate" style="display: none;">카테고리 선택</label>
                               <select name="searchCate" id="searchCate" title="카테고리 선택">
                                       <option value=>카테고리</option>
                                   
                                       <option value="나들이">나들이</option>
                                   
                                       <option value="가을꽃">가을꽃</option>
                                   
                                       <option value="야경">야경</option>
                                   
                                       <option value="문화예술">문화예술</option>
                                   
                                       <option value="미디어아트">미디어아트</option>
                                   
                                       <option value="빛">빛</option>
                                   
                               </select>
                           </div>

                           <div class="btn_box">
                            <button class="btn_reset"
                                    onclick="javascript:location.href='/kfes/list/wntyFstvlList.do';">
                                <span>초기화</span></button>
                            <button class="btn_search" id="btnSearch"><span>검색</span>
                            </button>
                            
                        </div>
                        
                        <div class= "serchinput">
                            <input type="text" value="검색" id="searchinput">
                        </div>
                    </form>

                        </div> 

                        <br><br>

                            <div id="fesvival-post1">
                            <!-- <a href="detailFestival.html" style="background-image: url(resources/urbanbrush-20180824005523160427.png);">
                                    <h2>경복궁 별빛야행</h2>
                                    <p>2024.09.11 ~ 2024.10.06</p>
                                    <p>서울 종로구</p>
                            </a> -->
                                <div style="background-image: url(resources/urbanbrush-20180824005523160427.png);"></div>
                                <div style="background-image: url(resources/해운대모래축제-포스터.jpg);"></div>
                                <div style="background-image: url(resources/1404859143246_PicsArt_1404833148597.png);"></div>
                                <div style="background-image: url(resources/redheartemoji1.jpg);"></div>
                            </div>
                            
                            <br>
                            <hr size="1" color="green">                          
                
                        </section>


                        
                        <section>
                            <!-- <div class="festival_ul_top" id="festival_ul_top" style="">
                                <ul class="tab_area">
                                    <li id="tabFstvlList" class="active">
                                        <button>기간순</button>
                                    </li>
                                    
                                    <li id="tabFstvlLikeOrderList">
                                        <button>인기순</button>
                                    </li>
                                </ul>
                            </div> -->

                            <section class="other_list type2" role="region">
                                <div class="inner">
                                    <div class="other_festival" role="application">
                                        <div class="blind">페스티벌 검색 리스트</div>
                    
                                        <!-- 검색 결과 없음 -->
                                        <div class="no_list" style="display: none;" id="divNoData">
                                            <div class="no_img"></div>
                                            <strong>검색결과가 없습니다</strong>
                                            <p>찾으시는 축제를 다시 검색해 주세요</p>
                                        </div>
                                        <!-- //검색 결과 없음 -->
                    
                                        <div class="festival_ul_top" id="festival_ul_top" style="">
                                            <ul class="tab_area">
                                                <li id="tabFstvlList" class="active">
                                                    <button>기간순</button>
                                                </li>
                                                
                                                <li id="tabFstvlLikeOrderList">
                                                    <button>인기순</button>
                                                </li>
                                            </ul>
                                        </div>

                                        <div class="tab_cont_area">
                                      
                                            <!-- 축제일순 -->
                                            <div class="tab_cont active" aria-expanded="true" role="application">
                                                <p class="blind">축제일순 리스트</p>
                                                <ul class="other_festival_ul" id="fstvlList">
                                                    <li>    
                                                        <a href="">
                                                            <div class="other_festival_img">
                                                                <img src="" alt=""><!--이미지 자리-->
                                                            </div>
                                                            <div class="sing_area">
                                                                <div><!--축제 테마 자리--></div>
                                                            </div>
                                                            <div class="other_festival_content">
                                                                <strong><!--축제명--></strong>
                                                                <div class="date"><!--축제 기간--></div>
                                                                <div class="ioc"><!--축제 지역코드?--></div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!--// 축제일순 -->
                                       
                                            <!-- 인기순 -->
                                            <div class="tab_cont" aria-expanded="false" role="application">
                                                <p class="blind">인기순 리스트</p>
                                                <ul class="other_festival_ul" id="fstvlLikeOrderList">
                                                    <li>    
                                                        <a href="">
                                                            <div class="other_festival_img">
                                                                <img src="" alt=""><!--이미지 자리-->
                                                            </div>
                                                            <div class="sing_area">
                                                                <div><!--축제 테마 자리--></div>
                                                            </div>
                                                            <div class="other_festival_content">
                                                                <strong><!--축제명--></strong>
                                                                <div class="date"><!--축제 기간--></div>
                                                                <div class="ioc"><!--축제 지역코드?--></div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <!--// 인기순 -->
                                        </div>
                                    </div>
                                </div>
                            </section>
                    
                    <!-- <div id="morediv">
                        <button id="more">더보기</button>
                    </div>

                    <section id="more_festival">
                        <div>
                            <div style="background-image: url(resources/해운대모래축제-포스터.jpg);"></div>
                                <div>
                                    <strong>해운대모래축제</strong>
                                    <small>1994.03.07 ~ 2024.09.05</small>
                                    <p>가산동 149-2 유앤율 202호</p>
                                </div>
                          </div>

                          <div>
                            <div style="background-image: url(resources/해운대모래축제-포스터.jpg);"></div>
                                <div>
                                    <strong>해운대모래축제</strong>
                                    <small>1994.03.07 ~ 2024.09.05</small>
                                    <p>가산동 149-2 유앤율 202호</p>
                                </div>
                          </div>

                          <div>
                            <div style="background-image: url(resources/해운대모래축제-포스터.jpg);"></div>
                                <div>
                                    <strong>해운대모래축제</strong>
                                    <small>1994.03.07 ~ 2024.09.05</small>
                                    <p>가산동 149-2 유앤율 202호</p>
                                </div>
                          </div>

                          <div>
                            <div style="background-image: url(resources/해운대모래축제-포스터.jpg);"></div>
                                <div>
                                    <strong>해운대모래축제</strong>
                                    <small>1994.03.07 ~ 2024.09.05</small>
                                    <p>가산동 149-2 유앤율 202호</p>
                                </div>
                          </div>   
                    </section> -->
    </div>         
    </main>
      	
  	<jsp:include page="../common/footer.jsp"/>

       
</body>
</html>
