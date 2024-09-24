document.addEventListener('DOMContentLoaded', function() {
    const cityFilters = document.querySelectorAll('.gender-filter span');
    const festivalItemsTop = document.querySelectorAll('#favorite-area-top .festival-item');
    const festivalItemsBottom = document.querySelectorAll('#favorite-area-bottom .festival-item');
  
    // 축제 데이터 (실제로는 서버에서 가져와야 합니다)
    const festivalData = {
      '미성년자': [
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_aad1a396-388a-4d38-9878-5e985b5fcd7c_1.jpg', name: '대구데이 페스티벌', info: '매년 11월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_edf65db1-8c43-4cf8-b1f7-098fa7e4250f_1.png', name: '서울 불꽃축제', info: '매년 10월 개최' },
         { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_68c11dc3-fcbb-47d8-a2a6-df31b271542a_1.jpg', name: '수원화성문화제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_44efb25c-bd55-4911-a73f-b1b149c22f32_1.jpg', name: '신비로운 강원투어', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_864b8312-2136-4d9a-a1b9-57d446e1260b_1.jpg', name: '밤가시초가 마실가자', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_d6a40a6c-2fb2-4d12-9093-b437539b83c9_1.jpg', name: '이천쌀문화축제', info: '매년 10월 개최' }
      ],
      '성인': [
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_68c11dc3-fcbb-47d8-a2a6-df31b271542a_1.jpg', name: '수원화성문화제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_d6a40a6c-2fb2-4d12-9093-b437539b83c9_1.jpg', name: '이천쌀문화축제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_ac54bb1a-28dd-443e-b27a-2c03ef912d1e_1.jpg', name: '전주비빔밥축제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_c3d27433-8ec5-44a1-afa4-47a43f92e8d8_1.jpg', name: '임실N치즈축제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_3df54690-2737-427a-83a1-c39c6547a346_1.jpeg', name: '순천 낙안읍성 민속문화축제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_7dfae381-566f-4f5e-9d5e-650a90d24d97_1.jpg', name: '명량대첩축제', info: '매년 11월 개최' },
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
  