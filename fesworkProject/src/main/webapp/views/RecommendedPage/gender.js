document.addEventListener('DOMContentLoaded', function() {
    const cityFilters = document.querySelectorAll('.gender-filter span');
    const festivalItemsTop = document.querySelectorAll('#favorite-area-top .festival-item');
    const festivalItemsBottom = document.querySelectorAll('#favorite-area-bottom .festival-item');
  
    // 축제 데이터 (실제로는 서버에서 가져와야 합니다)
    const festivalData = {
      '남성': [
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_a8033994-bf08-4795-8ffb-a3bf947547c8_1.jpeg', name: '누들대전페스티벌', info: '매년 11월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_40bc3a5a-8539-4014-9313-894e6482adb2_1.jpg', name: '대전한우숯불구이축제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_f84c717a-ec29-48f7-8980-4b33e3a346b8_1.jpg', name: '수성못페스티벌', info: '매년 11월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_2df360c5-f76e-4c00-961f-6cf4781cb195_1.jpg', name: '달성 대구현대미술제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_3a7630df-c1da-4c3c-a0c0-21923699b312_1.jpg', name: '서울 등축제', info: '매년 11월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_edf65db1-8c43-4cf8-b1f7-098fa7e4250f_1.png', name: '서울 불꽃축제', info: '매년 10월 개최' }
      ],
      '여성': [
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_d6890694-d72b-4c54-b937-596dc1f7b243_1.jpg', name: '금호강 바람소리길 축제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_7e3c457d-c550-4ee6-82a4-04f082852aa1_1.jpg', name: '대구메이커페스타', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_fd218467-9fe8-4c58-a384-bdca0bff09c8_1.JPG', name: '따따블 페스티벌', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_8b644768-b1e4-4071-a78f-9770ac19829d_1.jpg', name: '대구 문화유산 야행', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_e12d7a91-c6ad-45b0-8b9d-e2f7b1b4b598_1.jpg', name: '이월드 트로피컬 아쿠아월드', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_d6a40a6c-2fb2-4d12-9093-b437539b83c9_1.jpg', name: '이천쌀문화축제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_8129adef-6a10-4b6e-857e-3390fd96d74a_1.jpg', name: '수원화성문화제', info: '매년 10월 개최' },
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
  