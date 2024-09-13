<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>축제 홍보 작성</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300;400;700&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <style>
		#gall{
		    padding-left: 50px;
		    font-size: 30px;
		    background-color: #35096ebb;
		    border-top: 2px solid black;
		    border-bottom: 2px solid black;
		}
        #gall1{
            border-radius: 5px;
            margin-top: 10px; margin-bottom: 10px;
        }
		#ball{
		    padding-left: 15px;
		    font-size: 20px;
		    background-color: #f6c7ff;
		    border-bottom: 1px solid black;
		}
		.box {
		    width: 100px;
		    height: 100px;
		    background-color: #ece2e2;
		    border: 2px solid black;
		    display: inline-block;
		    margin: 10px;
		    text-align: center;
		    line-height: 100px;
		    border-radius: 10px;
		}
		.box1 {
		    border: 2px dotted rgb(184, 20, 224);
		}
		.box2 {
		    border: 2px dotted rgb(184, 20, 224);
		}
		.plus-sign {
		    color: green;
		    font-size: 24px;
		}
        table {
            width: 70em;
            margin: auto;
            border-collapse: collapse;
        }
        textarea {
            border: 1.5px rgb(68, 136, 244) solid;
            width: 700px;
            height: 200px;
            border-radius: 5px;
            padding-left: 10px;
            padding-top: 10px;
            resize: none;
        }
        .promo {
            height: 30px;
        }
        #sub {
		    border: none;
		    background-color: #35096ebb;
		    margin-bottom: 200px;
		    width: 100px;
		    height: 50px;
		    border-radius: 5px;
		}
        .inputStyle{
            border-radius: 5px;
            border: 1px solid lightblue;
        }
        #id{
            background-color:  #f6c7ff;
            border: none;
        }
        
    </style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
    <br><br><br><br>
	<div>
        <form action="" method="post" enctype="multipart/form-data">
            <table id="table"> 
                <tr><td id="gall"><span >제목: <input type="text" id="gall1"></span></td></tr>
                <tr><td id="ball"><input type="text" name="promowriter" id="id" value="${ loginMember.memberId }"></td></tr>
                <tr><td>썸네일 이미지 <input type="file" name="img" id=""></td></tr>
                <tr><td class="promo">축제명 :  <input type="text" placeholder="제목을 입력하세요" name="title" class="inputStyle" maxlength="40"></td></tr>
                <tr><td class="promo">축제기간 :  <input type="date" name="startdate" class="inputStyle"><input type="date" name="enddate" class="inputStyle"></td></tr>
                <tr><td class="promo">축제장소 :  <input type="text" name="location" class="inputStyle"></td></tr>
                <tr><td class="promo">축제 개요</td></tr>
                <tr><td><textarea placeholder="내용을 입력하세요" name="content"></textarea></td></tr>
                <tr><td class="promo">주관  <input type="text" name="part" class="inputStyle"></td></tr>
            </table>
            <br>
            <hr>
            <br>
        </form>
    </div>
    <div align="center">
        <input type="button" id="sub" value="등록">
    </div>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>