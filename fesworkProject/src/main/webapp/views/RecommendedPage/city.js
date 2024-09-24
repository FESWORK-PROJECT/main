document.addEventListener('DOMContentLoaded', function() {
    const cityFilters = document.querySelectorAll('.gender-filter span');
    const festivalItemsTop = document.querySelectorAll('#favorite-area-top .festival-item');
    const festivalItemsBottom = document.querySelectorAll('#favorite-area-bottom .festival-item');
  
    // 축제 데이터 (실제로는 서버에서 가져와야 합니다)
    const festivalData = {
      '서울': [
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_3a7630df-c1da-4c3c-a0c0-21923699b312_1.jpg', name: '서울 등축제', info: '매년 11월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_c9d13813-7b3c-49d0-be55-f934f1e0abaf_1.jpg', name: '창덕궁 달빛기행', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_32efce47-9085-4c4c-b0db-7bca0c8739f4_1.JPG', name: '한강역사탐방', info: '매년 11월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_e4351add-7b59-4842-b3b5-c38062b47c7c_1.jpg', name: '서울 불꽃축제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_9f1838dd-f39e-4599-aafe-6c5ea3b8cc45_1.png', name: '서울거리공연 구석구석 라이브', info: '매년 11월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_8129adef-6a10-4b6e-857e-3390fd96d74a_1.jpg', name: '한국의집 고호재', info: '매년 10월 개최' }
      ],
      '경기도': [
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_68c11dc3-fcbb-47d8-a2a6-df31b271542a_1.jpg', name: '수원화성문화제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_d6a40a6c-2fb2-4d12-9093-b437539b83c9_1.jpg', name: '이천쌀문화축제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_5b702834-f591-473f-af25-0b0d91911191_1.jpg', name: '벽초지수목원 가을꽃 국화축제', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_8afc7b2e-5b16-4b3d-9e31-6ecc8c01de4e_1.jpg', name: '아침고요수목원 들국화전시회', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_8b7f0ad9-384b-4b55-ba4b-5a6804cae161_1.jpg', name: '자라섬 꽃 페스타', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_b2c4fc5a-5ff9-4d32-9039-5093bea59f83_1.jpg', name: '용설애(愛) FESTA', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_864b8312-2136-4d9a-a1b9-57d446e1260b_1.jpg', name: '밤가시초가 마실가자', info: '매년 10월 개최' },
        { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_d6a40a6c-2fb2-4d12-9093-b437539b83c9_1.jpg', name: '이천쌀문화축제', info: '매년 10월 개최' }
    ],
    '제주도': [
      { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_220371a8-ec85-46b7-8bb0-30afa9a93a19_1.jpg', name: '구팔일 댕댕이 레이싱!', info: '매년 10월 개최' },
      { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_7cf80b70-1d05-486c-b033-7d9275d801ba_1.jpg', name: '9.81파크 <구팔일 억새바당>', info: '매년 10월 개최' },
      { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_a1177b14-604c-44e4-9577-b802902397c6_1.jpg', name: '최남단 방어 축제', info: '매년 10월 개최' },
      { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_560d2474-2e99-462a-a19d-aac9db067323_1.jpg', name: '9.81파크 GROC', info: '매년 10월 개최' },
      { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_268ee267-d483-4e3b-9e27-3594f6d9c5f6_1.jpg', name: '휴애리 동백축제', info: '매년 10월 개최' },
      { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_9c538c1b-798e-4a5f-a447-0f8cd620afb9_1.png', name: '항파두리 역사문화제', info: '매년 10월 개최' },
      { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_e12518da-0897-47cf-88c9-a84d524ce53c_1.jpg', name: '제주민속촌 민속체험축제', info: '매년 10월 개최' },
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
  