<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<%@ include file="../common/header.jsp" %>
    <br><br><br><br>
	<div>
        <form action="<%= contextPath %>/festivalwrite" method="post" enctype="multipart/form-data">
            <table id="table"> 
                <tr><td id="gall"><span >제목: 축제명으로 고정됩니다.</span></td></tr>
                <tr><td id="ball"><input type="text" name="memId" id="id" value="${ loginMember.memberId }"></td></tr>
                <tr><td>썸네일 이미지 <input type="file" name="fesImg" id=""></td></tr>
                <tr><td class="promo">축제명 :  <input type="text" placeholder="제목을 입력하세요" name="festivalName" class="inputStyle" maxlength="40"></td></tr>
                <tr><td class="promo">축제기간 :  <input type="date" name="openDate" class="inputStyle"><input type="date" name="closeDate" class="inputStyle"></td></tr>
                <tr><td class="promo">축제장소 : 
                    <select name="localCode">
                        <option value="11">서울특별시</option>
                        <option value="21">부산광역시</option>
                        <option value="22">대구광역시</option>
                        <option value="23">인천광역시</option>
                        <option value="24">광주광역시</option>
                        <option value="25">대전광역시</option>
                        <option value="26">울산광역시</option>
                        <option value="29">세종특별자치시</option>
                        <option value="31">경기도</option>
                        <option value="32">강원도</option>
                        <option value="33">충청북도</option>
                        <option value="34">충청남도</option>
                        <option value="35">전라북도</option>
                        <option value="36">전라남도</option>
                        <option value="37">경상북도</option>
                        <option value="38">경상남도</option>
                        <option value="39">제주특별자치도</option>
                    </select>
                    <input type="text" name="detailAdd" class="inputStyle">
                    <input type="hidden" name="fesAdd"/>
                   </td></tr>
                <tr><td class="promo">축제 개요</td></tr>
                <tr><td><textarea placeholder="내용을 입력하세요" name="fesDescription"></textarea></td></tr>

            </table>
            <br>
            <hr>
            <br>
		    <div align="center">
		        <button type="submit" id="sub" onclick="return mergeAdd();">등록</button>
		    </div>
        </form>
        <script>
        	const mergeAdd = () => {
        		console.log($("select[name=localCode] option:selected").text());
        		console.log($("input[name=detailAdd]").val());
        		
        		const local = $("select[name=localCode] option:selected").text();
        		const detail = $("input[name=detailAdd]").val();
        		$("input[name=fesAdd]").val(local + ' ' + detail);
        	}
        </script>
    </div>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>