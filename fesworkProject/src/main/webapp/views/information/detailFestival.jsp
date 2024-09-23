<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${iBoard.festivalName} - 축제 소개</title>
    <style>
   <%--      body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f9f9f9;
        }

        h2 {
            color: #35096ebb;
            margin-bottom: 10px;
        }

        #inner {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            margin-bottom: 20px;
        }

        #inner img {
            border-radius: 10px;
            margin-right: 20px;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            font-size: 18px;
            margin-bottom: 10px;
            max-width: 300px; /* 최대 너비 설정 */
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap; /* 줄바꿈 방지 */
        }

        #btnLike {
            background-color: #35096ebb;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }

        #explanation {
            font-size: small;
            text-align: center;
            margin-top: 20px;
        }

        #reviewmore {
            display: inline-block;
            background-color: #35096ebb;
            color: white;
            font-size: larger;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            margin-top: 20px;
        }

        section {
            margin-top: 30px;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        section div {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        section div img {
            border-radius: 50%;
            margin-right: 10px;
        }

        footer {
            margin-top: 30px;
            text-align: center;
            color: #777;
        }
        
        li button {
    width: 100px;  /* 이미지 컨테이너의 너비 설정 */
    height: 100px; /* 이미지 컨테이너의 높이 설정 */
    overflow: hidden; /* 이미지가 컨테이너를 넘지 않도록 설정 */
    display: flex;
    justify-content: center; /* 가로 중앙 정렬 */
    align-items: center; /* 세로 중앙 정렬 */
    background-color: #ddd; /* 배경색 설정 (선택 사항) */
    border-radius: 5px; /* 둥근 모서리 (선택 사항) */
		}

	li button{
	max-width: 100%;  /* 컨테이너 너비에 맞게 이미지 크기 조절 */
	max-height: 100%; /* 컨테이너 높이에 맞게 이미지 크기 조절 */
	object-fit: cover; /* 이미지 비율 유지하면서 컨테이너를 채우도록 설정 */
	
	}
    </style>
</head>
<body>

    <jsp:include page="../common/header.jsp"/>

    <div align="center">
        <span>FES WORK 축제 소개</span>
        <h2>${iBoard.festivalName}</h2>
    </div>

    <div id="inner">
        <img src="${iBoard.fesImage}" width="200px" height="250px">
        <ul>
            <li>${iBoard.festivalName}</li>
            <li id="dateRange">${iBoard.openDate} - ${iBoard.closeDate}</li>
            <li>${iBoard.fesAdd}</li>
            <li><button id="btnLike" value="좋아요" style="background-image: url('resources/images/free-icon-heart-shape-outline-25424.png');">좋아요</button> &nbsp; ${iBoard.fesLike} </li>
        </ul>    
    </div>

    <div id="explanation">
        <p><strong>${iBoard.fesDescription}</strong></p>
    </div>

    <hr color="#35096ebb">

    <section>
        <div>
            <img src="resources/1404859143246_PicsArt_1404853148597.png" width="50px" height="50px" alt="">
            <p>whdrns456 : 너무 재미있어요</p>
        </div>
        <div>
            <img src="resources/1404859143246_PicsArt_1404853148597.png" width="50px" height="50px" alt="">
            <p>whdrns456 : 너무 재미있어요</p>
        </div>
        <div>
            <img src="resources/1404859143246_PicsArt_1404853148597.png" width="50px" height="50px" alt="">
            <p>whdrns456 : 너무 재미있어요</p>
        </div>
    </section>

    <div align="center">
        <a href="" id="reviewmore">후기 보기</a>
    </div> --%>
        <style>
        .detail-contents{
            /* border: 1px solid red; */
            height: 800px;
            display: flex;
        }

        .detail-contents > *{
            /* border: 1px solid red; */
            height: 100%;
        }

        .detail-leftContent, .detail-rightContent{
            width: 20%;
        }

        .detail-centerContent{
            width: 60%;
            display: flex;
            justify-content: center;
            background-color: #9394c48a;
        }

        .festival-detail{
            /* border: 1px solid red; */
            border-radius: 20px;
            margin-top: 30px;
            width: 400px;
            height: 90%;
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: rgb(255, 255, 255);
            
        }

        .festival-image-box{
            margin-top: 20px;
        }

        .festival-title{
            margin-top: 10px;
            color: #23044bc9 ;
            font-size: 30px;
            font-weight: 700;
            padding-right: 32px;
        }

        .festival-info-box {
            margin-top: 10px;
            width: 80%;
            
        }

        .festival-info-box > span{
            margin-left: 2px;
            color: aliceblue;
            background-color: #5658b58a;
            padding: 3px;
            font-weight: 700;
        }

        .festival-info-box th{

            color: aliceblue;
            background-color: #5658b58a;
            padding: 3px;
            font-weight: 700;
            width: 40px;
  
        }

        .festival-info-box td{
            word-break:keep-all;

        }

        .festival-intro{
            margin-top: 10px;
            width: 74%;
            padding: 10px;
            background-color: rgb(229, 223, 231);
            word-break:keep-all;
        }
        
        
             #reviewmore {
            display: inline-block;
            background-color: #35096ebb;
            color: white;
            font-size: larger;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            margin-top: 20px;
        }
        </style>
</head>
<body align="center">
    
    <jsp:include page="../common/header.jsp"/>
    
    
    <div class="detail-contents" align="center">
        <div class="detail-leftContent"></div>
        
        <div class="detail-centerContent">
            <div class="festival-detail">
                <div class="festival-image-box">
                    <img src="${iBoard.fesImage}" width="300px">
                </div>
                <div class="festival-title">
                    <button id="btnLike" class="off" value="좋아요"> ♡ </button>
                    <%-- <button id="btnLike" class="on" value="좋아요" style="display:none;"> ♥ </button> --%>
                   
                    <span>${iBoard.festivalName}</span>
                	
                	<div id="likeCount" align="left">
                	  <span><small>&nbsp; ${iBoard.fesLike}</small></span>
                	</div>
                	
                </div>
                <div class="festival-info-box">
                    <hr color="#5658b58a"><br>
                    <span>기간</span> <b>${iBoard.openDate} ~ ${iBoard.closeDate}</b> <br><br>
                        <table>
                            <tr>
                                <th>
                                    주소
                                </th>
                                <td>
                                   ${iBoard.fesAdd}
                                </td>
                            </tr>
                        </table>
                        <br>
                    <span>축제 개요</span>
                </div>
                <div class="festival-intro">
                 ${iBoard.fesDescription}
                </div>
            </div>
        </div>
        <div class="detail-rightContent"></div>
    </div>
    
        <div align="center">
        <a href="boardList?festivalNo=${iBoard.festivalNo}" id="reviewmore">후기 보기</a>
    	</div> 
    	
    	<br><br>
    
    <jsp:include page="../common/footer.jsp"/>

    <script>
    $(document).ready(function() {
    	 let liked = false;
    	 const festivalNo = ${iBoard.fesLike}
    	
    	$('#btnLike').on('click',function(){
    	     const festivalNo = '${iBoard.festivalNo}'; // 축제 번호
    	     const likeCountElement = $('#likeCount small'); // 좋아요 수를 표시하는 요소
    	     let likeCount = parseInt(likeCountElement.text());
    	     
    	     liked = !liked; // 추가된 코드 클릭 시 true로 변함... 
    	     
    	     $.ajax({
    	    	url: 'likeFestival',
    	    	type: 'get',
    	        data: {
                    festivalNo: festivalNo,
                    isLiked: liked		// 현재 상태 반전
                },
                success: function(response) {
                	if (response.success) {
                		
                    likeCount += liked ? 1 : -1; // 좋아요 수 증가/감소
                    likeCountElement.text(likeCount);	
                    
                    // 버튼 상태변경
                   /* 
                    $('#btnNoLike.off').toggle(); // off 버튼 숨기긱 
                    $('#btnLike.on').toggle();
                	*/
                	
                	if(liked) {                		
                		$("#btnLike").text('♥');
                	} else {
                		$("#btnLike").text('♡');
                	}
                	}else{
                	  alert('문제가 발생했습니다. 다시 시도해 주세요.');
                	}
                },
                error: function() {
                    alert('서버와의 연결에 문제가 발생했습니다.');
                }
                	 
    	     });
    	});
    });
        
        
        
        
    </script>
</body>
</html>
