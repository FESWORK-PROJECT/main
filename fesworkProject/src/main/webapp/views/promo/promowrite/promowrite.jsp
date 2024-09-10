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
		#gall{
		    padding-left: 50px;
		    font-size: 30px;
		    background-color: #35096ebb;
		    border-top: 2px solid black;
		    border-bottom: 2px solid black;
		}
		#ball{
		    padding-left: 15px;
		    font-size: 20px;
		    background-color: #cdfabd;
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
		#sub {
		    border: none;
		    background-color: #35096ebb;
		    margin-bottom: 200px;
		    width: 100px;
		    height: 50px;
		    border-radius: 5px;
		}
        table {
            margin: auto;
            border-collapse: collapse;
        }
        input[type="date"] {
            border: 1.5px rgb(68, 136, 244) solid;
            width: 195px;
            height: 30px;
            border-radius: 5px;
            padding-left: 10px;
        }
        input[type="text"] {
            border: 1.5px rgb(68, 136, 244) solid;
            width: 400px;
            height: 30px;
            border-radius: 5px;
            padding-left: 10px;
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
        .header {
            height: 30px;
        }
    </style>
</head>
<body>
	<jsp:include page="../../common/header.jsp"/>
	<div>
        <form action="" method="post" enctype="multipart/form-data">
            <table id="table"> 
                <tr><td id="gall"><span >제목:(축제명으로 자동기입됨)</span></td></tr>
                <tr><td id="ball"><span >허완  2024-08-24</span></td></tr>
                <tr><td>썸네일 이미지 </td></tr>
                <tr>
                    <td class="box box1"><span class="plus-sign">+</span></td>
                    <td class="box box2"><span class="plus-sign">+</span></td>
                </tr>
                <tr><td class="header">축제명 :  <input type="text" placeholder="제목을 입력하세요" name="title" maxlength="40"></td></tr>
                <tr><td class="header">축제기간 :  <input type="date" name="title"><input type="date" name="title"></td></tr>
                <tr><td class="header">축제장소 :  <input type="text" name="title"></td></tr>
                <tr><td class="header">축제 개요</td></tr>
                <tr><td><textarea placeholder="내용을 입력하세요" name="detail"></textarea></td></tr>
                <tr><td class="header">주관</td></tr>
                <tr><td><input type="text" name="title"></td></tr>
            </table>
            <br>
            <hr>
            <br>
        </form>
    </div>
    <div align="center">
        <input type="button" id="sub" value="등록">
    </div>
	<jsp:include page="../../common/footer.jsp"/>
</body>
</html>