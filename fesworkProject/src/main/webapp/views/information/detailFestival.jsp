<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    
    <title>Document</title>

    <style>
        #explanation{font-size: small;}

       .off{

         /* 이미지와 텍스트가 겹치지 않도록 여백 설정 */
        background-size: 20px 20px; /* 이미지 크기를 원하는 크기로 조절 */
        background-position: 10px center; /* 이미지 위치를 input 내부에서 설정 */
        background-repeat: no-repeat; /* 이미지를 반복하지 않도록 설정 */
        background-color: white;
        width: 30px;
        height: 30px;
        border: none;

        box-sizing: border-box;
    
    }
        .event-image {
            text-align: center;
            margin-bottom: 20px;
        }

        .event-image img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
        }

        .info-item {
            display: flex;
            align-items: center;
            width: 48%;
            margin-bottom: 15px;
        }

        /* .info-item img {
            width: 24px;
            height: 24px;
            margin-right: 10px;
        } */

        .info-item span {
            font-size: 18px;
        }
        
        .contact {
            text-align: center;
            margin-top: 20px;
            font-size: 18px;
        }

        #reviewmore{
            background-color: #35096ebb;
            color: white;
            font-size: larger;
            text-decoration: none;
        }


        #inner{
            
        display: flex;
        justify-content: center;
        }
        li{
            list-style-type: none;
        }


    </style>

</head>
<body>

  	 <jsp:include page="../common/header.jsp"/>

   <br><br>

    <div align="center">
        <span>경복궁에서 마주한 특별한 시간</span>
        <h2>경복궁 생과방</h2>
    </div>

 


    <div id="inner">
        <img src="resources/urbanbrush-20180824005523160427.png" width="200px" height="250px">
            <ul>
                <li>2024.09.05 - 2024.09.08</li><br>
                <li>서울특별시 금천구 가산동 149-2 유앤율 202호 </li><br>
                <li>전화번호 :  010-2725-0780</li><br>
                <li>주관 : 최종창민 허정현</li><br>
                <li>입장료 무료</li>
            </ul>    
    </div>

    <div>
        <button id="btnLike" class="off" value="좋아요"> </button>
    </div>


    <br>

    <div id="explanation"align="center" >
      
        <P> *
    <strong>
        경복궁 소주 먹고싶다 진짜 너무너무 취하고 싶다 <br>
        이러다가 프로젝트를 정말 다 끝낼 수 있는건가 싶기도하고 <br>
        나는 정말 잘 못하겠는데.....
        용기를 내봐야겠지 그래도 
    </strong>
      </P>
    </div>
</section>

    <br>
    <hr color="#35096ebb">

        <section>
            <div>
                <div>
                    <img src="resources/1404859143246_PicsArt_1404833148597.png" width="50px" height="50px" alt="">
                    <p>whdrns456 : 너무 재미있어요</p>
                </div>
                
                <div>
                    <img src="resources/1404859143246_PicsArt_1404833148597.png" width="50px" height="50px" alt="">
                    <p>whdrns456 : 너무 재미있어요</p>
                </div>

                <div>
                    <img src="resources/1404859143246_PicsArt_1404833148597.png" width="50px" height="50px" alt="">
                    <p>whdrns456 : 너무 재미있어요</p>
                </div>
            </div>

                            <div align="center">
                                <a href="" id="reviewmore">후기 보기</a>
                            </div>

        </section>

 
		<jsp:include page="../common/footer.jsp"/>

</body>
</html>