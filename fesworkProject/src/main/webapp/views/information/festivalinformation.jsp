<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
       
       #fesvival-post1 {
    display: flex;
    flex-wrap: wrap; /* 줄 바꿈을 허용 */
    justify-content: center; /* 가로 중앙 정렬 */
    gap: 10px; /* 요소들 간의 간격 설정 */
}

#fesvival-post1 > div {
    width: 210px;  /* 이미지 컨테이너의 너비 설정 */
    height: 250px; /* 이미지 컨테이너의 높이 설정 */
    overflow: hidden; /* 이미지가 컨테이너를 넘지 않도록 설정 */
    display: flex;
    justify-content: center; /* 가로 중앙 정렬 */
    align-items: center; /* 세로 중앙 정렬 */
    background-color: #ddd; /* 배경색 설정 (선택 사항) */
    border-radius: 5px; /* 둥근 모서리 (선택 사항) */
}

#fesvival-post1 img {
    max-width: 100%;  /* 컨테이너 너비에 맞게 이미지 크기 조절 */
    max-height: 100%; /* 컨테이너 높이에 맞게 이미지 크기 조절 */
    object-fit: cover; /* 이미지 비율 유지하면서 컨테이너를 채우도록 설정 */
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
    
	    .tab_cont_area {
        padding: 20px;
    }

    .other_festival_ul {
        display: grid;
        grid-template-columns: repeat(4, 1fr); /* 한 줄에 4개의 항목 */
        gap: 10px; /* 항목 간의 간격 설정 */
        list-style-type: none; /* 기본 리스트 스타일 제거 */
        padding: 0;
        margin: 0;
    }

    .other_festival_ul li {
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
        background-color: #fff; /* 배경 색상 설정 (선택 사항) */
        border: 1px solid #ddd; /* 테두리 색상 설정 (선택 사항) */
        border-radius: 5px; /* 테두리 둥글게 설정 (선택 사항) */
        overflow: hidden; /* 이미지가 범위를 넘어가지 않도록 설정 */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 추가 (선택 사항) */
    }

    .other_festival_img {
        width: 200px; /* 부모 요소의 너비에 맞게 조정 */
        height: 200px; /* 고정 높이 설정 */
        display: flex;
        justify-content: center;
        align-items: center;
        overflow: hidden; /* 이미지가 부모 요소를 넘지 않도록 설정 */
    }

    .other_festival_img img {
        width: 100%;
        height: 100%;
         
    }

    .sing_area, .other_festival_content {
        padding: 10px;
        
    }
    
    a {
    	text-decoration:none;
    }
    
    
    /* 검색 결과 없음 스타일링 */
		.no-results {
		    text-align: center;
		    padding: 50px;
		    background-color: #f9f9f9;
		    border: 1px solid #ddd;
		    border-radius: 10px;
		    margin: 20px auto;
		    max-width: 600px;
		}
		
		.no-results__image {
		    margin-bottom: 20px;
		}
		
		.no-results__image img {
		    max-width: 150px;
		    height: auto;
		}
		
		.no-results__message {
		    color: #555;
		}
		
		.no-results__title {
		    font-size: 24px;
		    color: #333;
		    font-weight: bold;
		    margin-bottom: 10px;
		}
		
		.no-results__description {
		    font-size: 16px;
		    color: #777;
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
                    
                    <form action="searchRequest" name="festivalSearch" id="festivalSearch">
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
                                    
                                        <option value="11">서울</option>
                                    
                                        <option value="23">인천</option>
                                    
                                        <option value="25">대전</option>
                                    
                                        <option value="22">대구</option>
                                    
                                        <option value="24">광주</option>
                                    
                                        <option value="21">부산</option>
                                    
                                        <option value="26">울산</option>
                                    
                                        <option value="29">세종시</option>
                                    
                                        <option value="31">경기도</option>
                                    
                                        <option value="32">강원특별자치도</option>
                                    
                                        <option value="33">충청북도</option>
                                    
                                        <option value="34">충청남도</option>
                                    
                                        <option value="37">경상북도</option>
                                    
                                        <option value="38">경상남도</option>
                                    
                                        <option value="37">전북특별자치도</option>
                                    
                                        <option value="38">전라남도</option>
                              
                                        <option value="39">제주도</option>
                                </select>
                                </div>

                                <div class="select_box select_cate"
                                style="background-image:url(/kfes/resources/img/cate_ico.svg)" ;>
                               <label for="searchCate" style="display: none;">카테고리 선택</label>
                               <select name="searchCate" id="searchCate" title="카테고리 선택">
                                       <option value="">카테고리</option>
                                   
                                       <option value="tradition">전통</option>
                                   
                                       <option value="food">음식</option>
                                   
                                       <option value="culture">문화</option>
                                   
                                       <option value="experience">체험</option>
                                   
                                       <option value="미디어아트">미디어아트</option>
                                   
                                       <option value="빛">빛</option>
                               </select>
                           </div>

                           <div class="btn_box">
                            <button type="reset">
                                <span>초기화</span></button>
                            <button class="btn_search" id="btnSearch" type="submit"><span>검색</span>
                            </button>
                            
                        </div>
                 
                        <div class= "serchinput">
                            <input type="text" value="검색" id="searchinput">
                        </div>
                    </form>

                        </div> 

                        <br><br>

                            <div id="fesvival-post1">
                     			<c:forEach var="l" items="${ lList}">	
                                <div><a href="detailFes?festivalNo=${l.festivalNo }"><img src="${l.fesImage}"></a></div>
                                </c:forEach>
                                </div>
                            
                            <br>
                            <hr size="1" color="green">                          
                
                        </section>

                        <section>
                            <section class="other_list type2" role="region">
                                <div class="inner">
                                    <div class="other_festival" role="application">
                                        <div class="blind">페스티벌 검색 리스트</div>
                                      <c:choose>
                                      
                                      <c:when test="${ empty fList  }">
                                        <!-- 검색 결과 없음 -->
                                   <!-- 검색 결과 없음 -->
											<div class="no-results">
											    <div class="no-results__image">
											        <img src="resources/images/free-icon-cry-1463950.png" alt="No Results">
											    </div>
											    <div class="no-results__message">
											        <strong class="no-results__title">검색결과가 없습니다</strong>
											        <p class="no-results__description">찾으시는 축제를 다시 검색해 주세요</p>
											    </div>
											</div>
                                        <!-- //검색 결과 없음 -->
                   						</c:when>
                   						<c:otherwise>
                                        <div class="festival_ul_top" id="festival_ul_top" style="">
                                            <ul class="tab_area">
                                                <li id="tabFstvlList" class="active">
                                                    <button id="btnDate">기간순</button>
                                                </li>
                                                
                                                <li id="tabFstvlLikeOrderList">
                                                    <button id="btnLike">인기순</button>
                                                </li>
                                            </ul>
                                        </div>

                                        <div class="tab_cont_area">
                                      		
                                            <!-- 축제일순 -->
                                            <div class="tab_cont active" aria-expanded="true" role="application">
                                                <p class="blind">축제일순 리스트</p>
                                                <ul class="other_festival_ul" id="fstvlList">
                                                    	<c:forEach var="f" items="${fList}">
                                                    <li>    
                                                        <a href="detailFes?festivalNo=${f.festivalNo }">
                                                            <div class="other_festival_img">
                                                                <img src="${f.fesImage}"><!--이미지 자리-->
                                                            </div>
                                                  
                                                            <div class="other_festival_content">
                                                                <strong>${f.festivalName}</strong>
                                                                <div class="date">${f.openDate} ~  ${f.closeDate}</div>
                                                                <div class="ioc">${f.fesAdd}</div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                            <!--// 축제일순 -->
                                       </c:otherwise>
                                            </c:choose>
                                   
                                        </div>
                                    </div>
                                </div>
                            </section>
                    

                        </div>         
                        </main>
                        <jsp:include page="../common/footer.jsp"/>       

                        <script>
                           		document.addEventListener('DOMContentLoaded', function() {
                                const btnDate = document.getElementById('btnDate');
                                const btnLike = document.getElementById('btnLike');

                                btnDate.addEventListener('click',function(){
                                    fesWorkList('dateSort');
                                });
                                btnLike.addEventListener('click',function(){
                                    fesWorkList('likeSort');
                                });
                                function fesWorkList(sortOrder) {
                                    fetch('list/wntyFstvlList.do?sortOrder='+sortOrder)
                                    .then(response => response.json())
                                    .then(data => updateFestivalList(data))
                                    .catch(error => console.error('Error:', error));
                                }
                                function updateFestivalList(fesData){
                                    const list = document.getElementById('fstvlList');
                                    list.innerHTML = '';
                                    fesData.forEach(fList =>{
                                        const listItem = document.createElement('li');
                                        listItem.innerHTML = '<a href="">' + 
                                                            '<div class="other_festival_img">' + 
                                                                 '<img src="' + fList.fesImage + '">' +
                                                               '</div>' +
                                                           '<div class="other_festival_content">' + 
                                                                '<strong>' + fList.festivalName +'</strong>'+ 
                                                               '<div class="date">'+fList.openDate+'~'+ fList.closeDate+'</div>' +
                                                               '<div class="ioc">' + fList.fesAdd + '</div>' +
                                                            '</div>' +
                                                        '</a>';
                                        list.appendChild(listItem);
                                    });
                                }
                            });
                        </script>
</body>
</html>
