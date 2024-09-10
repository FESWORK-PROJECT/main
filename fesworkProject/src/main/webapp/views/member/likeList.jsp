<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>좋아요한 축제 페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<style>

    body{
        margin: 0px;
        padding: 0px;
    }
    .outer{
        /* border: 1px solid blue; */
        display: flex;
        box-sizing: border-box;
    }
    
    .content{
        /* border: 1px solid red; */
        height: 800px;
        /* background-color: rgb(224, 240, 219); */
    }

    #contentLeft, #contentRight {
        width:10%;
    }

    #contentCenter{
        width: 80%;
        height: 800px
    }

    .textContainer{
        /* border: 1px solid blue; */
        width: 100%;
        height: 50px;
        text-align: center;
        border-radius: 10px;
        background-color: rgb(224, 240, 219);
        font-size: larger;
        font-weight: 900;
        margin-top: 10px;
        line-height: 50px;
        
    }

    .tableContainerOuter{
        /* border: 1px solid blue; */
        display: flex;
        flex-wrap: wrap;
        align-content:flex-start;
        gap: 0px 10px;
        justify-content: center;
        border-radius: 20px;
        
    }

    .tableContainer table{
        text-align: center;
        margin: 14px 0px;

    }

    .tableContainer table th{
        font-size:large;
    }

    .tableContainer img{
        width: 220px;
        border-radius: 10px;
    }



    
    
</style>

</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <%@ include file="../common/header.jsp" %>
    
    <div class="outer">
        
        <div class="content" id="contentLeft"></div>
        <div class="content" id="contentCenter">
            <div class="textContainer">좋아요한 축제 목록</div>
            <div class="tableContainerOuter">
                <div class="tableContainer">
                   <table>
                        <tr>
                            <td>
                                <img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_ee67355c-33fc-4ff6-85a6-8569f16c2303_1.jpg" alt="축제이미지">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                축제제목데이터        
                            </th>
                        </tr>
                        <tr>
                            <td>
                                축제지역데이터
                            </td>
                        </tr>
                   </table>
                </div>
                <div class="tableContainer">
                    <table>
                            <tr>
                                <td>
                                    <img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_ee67355c-33fc-4ff6-85a6-8569f16c2303_1.jpg" alt="축제이미지">
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    축제제목데이터        
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    축제지역데이터
                                </td>
                            </tr>
                    </table>
                </div>    
                <div class="tableContainer">
                    <table>
                        <tr>
                            <td>
                                <img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_ee67355c-33fc-4ff6-85a6-8569f16c2303_1.jpg" alt="축제이미지">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                축제제목데이터        
                            </th>
                        </tr>
                        <tr>
                            <td>
                                축제지역데이터
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="tableContainer">
                    <table>
                        <tr>
                            <td>
                                <img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_ee67355c-33fc-4ff6-85a6-8569f16c2303_1.jpg" alt="축제이미지">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                축제제목데이터        
                            </th>
                        </tr>
                        <tr>
                            <td>
                                축제지역데이터
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="tableContainer">
                    <table>
                        <tr>
                            <td>
                                <img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_ee67355c-33fc-4ff6-85a6-8569f16c2303_1.jpg" alt="축제이미지">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                축제제목데이터        
                            </th>
                        </tr>
                        <tr>
                            <td>
                                축제지역데이터
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="tableContainer">
                    <table>
                        <tr>
                            <td>
                                <img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_ee67355c-33fc-4ff6-85a6-8569f16c2303_1.jpg" alt="축제이미지">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                축제제목데이터        
                            </th>
                        </tr>
                        <tr>
                            <td>
                                축제지역데이터
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="tableContainer">
                    <table>
                        <tr>
                            <td>
                                <img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_ee67355c-33fc-4ff6-85a6-8569f16c2303_1.jpg" alt="축제이미지">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                축제제목데이터        
                            </th>
                        </tr>
                        <tr>
                            <td>
                                축제지역데이터
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="tableContainer">
                    <table>
                        <tr>
                            <td>
                                <img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_ee67355c-33fc-4ff6-85a6-8569f16c2303_1.jpg" alt="축제이미지">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                축제제목데이터        
                            </th>
                        </tr>
                        <tr>
                            <td>
                                축제지역데이터
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="tableContainer">
                    <table>
                        <tr>
                            <td>
                                <img src="https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_ee67355c-33fc-4ff6-85a6-8569f16c2303_1.jpg" alt="축제이미지">
                            </td>
                        </tr>
                        <tr>
                            <th>
                                축제제목데이터        
                            </th>
                        </tr>
                        <tr>
                            <td>
                                축제지역데이터
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            
        </div>
        <div class="content" id="contentRight"></div>
    </div>


</body>
</html>