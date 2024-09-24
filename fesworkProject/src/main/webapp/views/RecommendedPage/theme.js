document.addEventListener('DOMContentLoaded', function() {
    const cityFilters = document.querySelectorAll('.gender-filter span');
    const festivalItemsTop = document.querySelectorAll('#favorite-area-top .festival-item');
    const festivalItemsBottom = document.querySelectorAll('#favorite-area-bottom .festival-item');
  
    // 축제 데이터 (실제로는 서버에서 가져와야 합니다)
    const festivalData = {
      '전통': [
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_da294d0a-1aaa-4b4e-8279-7c1dd1c8a581_1.jpg', name: '탐라문화제', info: '매년 11월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_d5dfae4f-39f7-40a3-b80d-b045c0a39c48_1.jpg', name: '세계유산축전 제주', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_fcc519d2-0ca7-45b2-905d-1afe9a95203d_1.jpg', name: '제주옹기굴제', info: '매년 11월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_3df54690-2737-427a-83a1-c39c6547a346_1.jpeg', name: '순천 낙안읍성 민속문화축제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_7dfae381-566f-4f5e-9d5e-650a90d24d97_1.jpg', name: '명량대첩축제', info: '매년 11월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_8fb85e2f-0e6f-4676-8c0a-4183b3a9c74b_1.png', name: '통영 문화유산 야행', info: '매년 10월 개최' }
      ],
      '음식': [
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_ac54bb1a-28dd-443e-b27a-2c03ef912d1e_1.jpg', name: '전주비빔밥축제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_c3d27433-8ec5-44a1-afa4-47a43f92e8d8_1.jpg', name: '임실N치즈축제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_9759605a-ba6a-4a01-b430-8deffe9960fa_1.jpg', name: 'K-푸드 페스티벌 넉넉', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_9764a2f7-aa9f-40e0-9e06-604c94897891_1.jpg', name: '영종 세계음식축제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_143fc344-bb22-43aa-bb05-940710dd3fcd_1.jpg', name: '인천 송도맥주축제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_d6a40a6c-2fb2-4d12-9093-b437539b83c9_1.jpg', name: '이천쌀문화축제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_f6a18fe7-6577-4381-b706-16ee01b02bd8_1.jpg', name: '대전 빵 축제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_d6a40a6c-2fb2-4d12-9093-b437539b83c9_1.jpg', name: '이천쌀문화축제', info: '매년 10월 개최' }
    ]
    };
  
    cityFilters.forEach(filter => {
      filter.addEventListener('click', function() {
        // 활성화된 필터 스타일 변경
        cityFilters.forEach(item => item.classList.remove('active'));
        this.classList.add('active');
  
        const selectedCity = this.textContent.replace('#', '');
        const cityFestivals = festivalData[selectedCity] || [];
  
        // 상단 3개 테이블 업데이트
        festivalItemsTop.forEach((item, index) => {
          if (index < cityFestivals.length) {
            const festival = cityFestivals[index];
            const img = item.querySelector('img');
            const nameCell = item.querySelector('p:nth-of-type(1)');
            const infoCell = item.querySelector('p:nth-of-type(2)');
  
            img.src = festival.image;
            img.alt = `${festival.name} 이미지 없음`;
            nameCell.textContent = festival.name;
            infoCell.textContent = festival.info;
            item.style.display = 'block';
          } else {
            item.style.display = 'none'; // 데이터가 없는 경우 숨기기
          }
        });
  
        // 하단 6개 테이블 업데이트
        festivalItemsBottom.forEach((item, index) => {
          if (index < cityFestivals.length) {
            const festival = cityFestivals[index];
            const img = item.querySelector('img');
            const nameCell = item.querySelector('p:nth-of-type(1)');
            const infoCell = item.querySelector('p:nth-of-type(2)');
  
            img.src = festival.image;
            img.alt = `${festival.name} 이미지 없음`;
            nameCell.textContent = festival.name;
            infoCell.textContent = festival.info;
            item.style.display = 'block';
          } else {
            item.style.display = 'none'; // 데이터가 없는 경우 숨기기
          }
           const selectBtn = document.querySelector('.select-btn');
   selectBtn.addEventListener('click', function() {
     // survey.jsp 페이지로 이동
     //window.location.href = '/views/RecommendedPage/survey.jsp';
     window.location.href = 'survey.jsp';
   });
        });
      });
    });
  });
  