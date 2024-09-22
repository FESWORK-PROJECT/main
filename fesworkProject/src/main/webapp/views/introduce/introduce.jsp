<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">

<style>

    .bg{
        height: 100vh;
        background-position: center center;
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        display: flex;
        align-items: end;
        justify-content: center;
        padding-bottom: 30px;
        
    }
    

	h1 {
		position: absolute; 
		top: 50%; left: 50%; 
		transform: translate(-50%,-50%); 
		font-size: 48px;
		font-weight: 500;
		color: rgb(255, 255, 255) !important;
		z-index: 100;
		text-align: center;
		word-break: keep-all;
		text-shadow: 0 0 5px rgba(0, 0, 0, 0.8);
		font-family: 'Noto Sans KR'
	}
	

    .intro_box {
        border-radius: 20px;
        height: 100px;
        width: 400px;
        font-size: 40px;
        background-color: rgb(220, 201, 238, 0.7);
        text-align: center;
        line-height: 100px;
        font-family: "Dongle", sans-serif;
    }

	.bg_top{
		 background-image:url(/feswork/resources/images/camera.jpg);
	}

    .bg_type1{
        background-image:url(/feswork/resources/images/inchang.jpg);
    }

    .bg_type2{
        background-image:url(/feswork//resources/images/minwook.jpg);
    }

    .bg_type3{
        background-image:url(/feswork//resources/images/jeonghyun.jpg);
    }

    .bg_type4{
        background-image:url(/feswork/resources/images/jonggoon.jpg);
        background-attachment:local;
    }

     #goToIndex{
            position: fixed;
            right: 60px;
            bottom: 60px;
            width: 100px;
            border: none;
            border-radius: 10%;
            cursor: pointer;
            background-color: #461236;
            color: #987D9A;
            font-size: 20px;
            text-align: center;
            line-height: 40px;

            display: flex;
            flex-direction: column;
        }

        #goToIndex>*{
            text-decoration-line: none;
            color: #987D9A;
        }

        #goToIndex:hover{
            background-color: #8d4992;
            
        }

        #goToIndex>*:hover{
            
            color: #461236;
        }
</style>
</head>
<body>
    <%@ include file="../common/header.jsp" %>
    
    <div class="bg bg_top">
    	<div class="inro_top">
           <h1>스크롤을 내려서<br>TEAM 최종창민허정현의 멤버를 확인해보세요.<Br><Br>즐거운 순간을 담아보았습니다.</h1>
        </div>
    </div>
    
    <div class="bg bg_type1">
        <div class="intro_box box_type1">
            뭔가 잘 안풀리는 인창 -_-^ .jpg
        </div>
    </div>
    <div class="bg bg_type2">
        <div class="intro_box box_type2">
            그저 행복한 민욱 ^-^ .jpg
        </div>
    </div>
    <div class="bg bg_type3">
        <div class="intro_box box_type3">
            그저 피곤한 정현 -_- zZz .jpg
        </div>
    </div>
    <div class="bg bg_type4">
        <div class="intro_box box_type4">
            수진바라기 종군 /ㅇ_ㅇ .jpg
        </div>
    </div>
    
    <div id="goToIndex">
		<a href="http://localhost:8282/feswork/introducePage.intro">▲ Top</a>
    </div>
</body>
</html>