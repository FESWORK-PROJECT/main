<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>아이디 찾기 페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<style>

    body{
        margin: 0px;
        padding: 0px;
    }
    .outer{
        /* border: 1px solid blue; */
        
        display: flex;
    }
    
    .content{
        /* border: 1px solid red; */
        height: 500px;
        background-color: rgba(255, 255, 255, 0.411);
    }

    #contentLeft, #contentRight {
        width:0%;
    }

    #contentCenter{
        width: 100%;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        background-color: rgb(243, 219, 241);
        border: 1px solid rgb(255, 255, 255);
        border-radius: 30px;
    }

    table * {
        text-align: center;
    }

    .tableContainer{
        width: 700px;
    }

    
    
</style>

</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <%@ include file="../common/header.jsp" %>
    
    <div class="outer">
        
        <div class="content" id="contentLeft"></div>
        <div class="content" id="contentCenter">
            <div class="tableContainer" id="tableContainer1" >
                <table border="1" class="table table-success table-striped" >
                    <h4>내 축제 홍보 글</h4>
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성일</th>
                            <th>조회수</th>
                            <th>수정/삭제</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td><a href="#">구리시코스모스축제</a></td>
                            <td>2024-09-06</td>
                            <td>1</td>
                            <td><button type="button">수정</button><button type="button">삭제</button></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><a href="#">구리시코스모스축제</a></td>
                            <td>2024-09-06</td>
                            <td>100</td>
                            <td><button type="button">수정</button><button type="button">삭제</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <br>
            <div class="tableContainer" id="tableContainer2">
                <table border="1" class="table table-info table-striped">
                    <h4>내 축제 후기</h4>
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성일</th>
                            <th>조회수</th>
                            <th>수정/삭제</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td><a href="#">짱재밌었움ㅋ</a></td>
                            <td>2024-09-06</td>
                            <td>1</td>
                            <td><button type="button">수정</button><button type="button">삭제</button></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td><a href="#">바가지당했어요 가지마셈</a></td>
                            <td>2024-09-06</td>
                            <td>100</td>
                            <td><button type="button">수정</button><button type="button">삭제</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="content" id="contentRight"></div>
    </div>


</body>
</html>