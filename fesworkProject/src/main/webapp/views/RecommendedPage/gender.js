document.addEventListener('DOMContentLoaded', function () {
    const genderFilters = document.querySelectorAll('.gender-filter span');

    genderFilters.forEach(filter => {
        filter.addEventListener('click', function () {
            genderFilters.forEach(item => item.classList.remove('active'));
            this.classList.add('active');

            // Implement filtering logic here if needed
        });
    });
});
document.addEventListener('DOMContentLoaded', function() {
    const cityFilters = document.querySelectorAll('.gender-filter span');
    const festivalItems = document.querySelectorAll('#favorite-area .festival-item');
    
    // 축제 데이터 (실제로는 서버에서 가져와야 합니다)
    const festivalData = {
        '서울': [
            { image: 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_3a7630df-c1da-4c3c-a0c0-21923699b312_1.jpg', name: '서울 등축제', info: '매년 11월 개최' },
            { image: '서울축제2.jpg', name: '서울 불꽃축제', info: '매년 10월 개최' },
            { image: '서울축제2.jpg', name: '서울 불꽃축제', info: '매년 10월 개최' },
            // ... 더 많은 축제 정보
        ],
        '경기도': [
            { image: '', name: '수원화성문화제', info: '매년 10월 개최' },
            { image: '경기축제2.jpg', name: '이천쌀문화축제', info: '매년 10월 개최' },
            // ... 더 많은 축제 정보
        ],
        // ... 다른 도시들의 축제 정보
    };

    cityFilters.forEach(filter => {
        filter.addEventListener('click', function() {
            // 활성화된 필터 스타일 변경
            cityFilters.forEach(item => item.classList.remove('active'));
            this.classList.add('active');

            const selectedCity = this.textContent.replace('#', '');
            const cityFestivals = festivalData[selectedCity] || [];

            // 축제 정보 업데이트
            festivalItems.forEach((item, index) => {
                if (index < cityFestivals.length) {
                    const festival = cityFestivals[index];
                    const img = item.querySelector('img');
                    const nameCell = item.querySelector('td:nth-child(2)');
                    const infoCell = item.querySelector('td:nth-child(3)');

                    console.log(item);
                    img.src = festival.image;
                    img.alt = festival.image+"이미지없음";
                    nameCell.textContent = festival.image;
                    infoCell.textContent = festival.info;
                    item.style.display = 'block';
                } else {
                    item.style.display = 'none';
                }
            });
        });
    });
});