-- 모든 드랍으로 초기화
DROP TABLE MEMBER;
DROP SEQUENCE MEMBER_SEQ;
DROP TABLE FESTIVAL;
DROP TABLE THEME_OF_FESTIVAL;
DROP TABLE THEME;
DROP SEQUENCE FNO;
DROP TABLE RV;
DROP SEQUENCE RNO;

-- 멤버 테이블 생성
CREATE TABLE MEMBER (
	MEM_NO NUMBER NOT NULL,
    MEM_ID VARCHAR2(30) PRIMARY KEY,
	MEM_PASSWORD VARCHAR2(50) NOT NULL,	
    MEM_NAME VARCHAR2(20) NOT NULL,
    GENDER VARCHAR2(6),
    EMAIL VARCHAR2(30),
    BIRTH VARCHAR2(30),
	PHONE VARCHAR2(13),
	MEM_LEVEL VARCHAR2(20) DEFAULT '회원',
	SIGNUP_DATE	DATE DEFAULT SYSDATE,
	RESIGN_DATE	DATE DEFAULT NULL
);

-- 멤버시퀀스 생성
CREATE SEQUENCE MEMBER_SEQ
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
    
-- 멤버 어드민 추가
INSERT INTO MEMBER(MEM_NO, MEM_ID, MEM_PASSWORD, MEM_NAME,GENDER, EMAIL, MEM_LEVEL)
VALUES(MEMBER_SEQ.NEXTVAL, 'admin', '1234', '관리자' ,'남', '1gjdhks1@naver.com', '관리자');


-- 축제 테이블 생성
CREATE TABLE FESTIVAL(
FESTIVAL_NO NUMBER PRIMARY KEY,
MEM_ID VARCHAR2(20) NOT NULL,
LOCAL_CODE VARCHAR2(20) NOT NULL,
FESTIVAL_NAME VARCHAR2(100) NOT NULL,
OPEN_DATE DATE NOT NULL,
CLOSE_DATE DATE NOT NULL,
FES_LIKE NUMBER,
FES_DESCRIPTION VARCHAR2(2000), 
FES_ADD VARCHAR2(500) NOT NULL,
FES_IMAGE VARCHAR2(2000)
);

-- COMMENT ON COLUMN BOARD.BOARD_NO IS '';
COMMENT ON COLUMN FESTIVAL.FESTIVAL_NO IS '축제코드';
COMMENT ON COLUMN FESTIVAL.MEM_ID IS '회원아이디';
COMMENT ON COLUMN FESTIVAL.LOCAL_CODE IS '지역코드';
COMMENT ON COLUMN FESTIVAL.FESTIVAL_NAME IS '축제명';
COMMENT ON COLUMN FESTIVAL.OPEN_DATE IS '축제오픈일';
COMMENT ON COLUMN FESTIVAL.CLOSE_DATE IS '축제종료일';
COMMENT ON COLUMN FESTIVAL.FES_LIKE IS '축제좋아요';
COMMENT ON COLUMN FESTIVAL.FES_DESCRIPTION IS '축제개요';
COMMENT ON COLUMN FESTIVAL.FES_ADD IS '축제주소';
COMMENT ON COLUMN FESTIVAL.FES_IMAGE IS '축제이미지';


-- 테마별 축제 테이블 생성
CREATE TABLE THEME_OF_FESTIVAL (
   FESTIVAL_NO NUMBER NOT NULL ,
   THEME_CODE VARCHAR2(20)
);

-- 테마코드 적용
INSERT INTO THEME_OF_FESTIVAL VALUES(2, 'tradition');


-- 테마 테이블 생성
CREATE TABLE THEME (
   THEME_CODE NUMBER ,
   THEME_NAME VARCHAR2(20) NULL
);

-- 축제 시퀀스 생성
CREATE SEQUENCE FNO
START WITH 1;


-- 인천광역시 정보
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 23, '인천도시재생축제', '2024-09-27', '2024-09-28', 8, 
' 인천도시재생축제는 지역축제 중 유일하게  재미와 감동을 선사하고자 한다.'
,'인천광역시 동구 화도진로 53 (송현동)','https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/21f0d8ab-657e-46cf-af3b-1543f2e43013_3.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 23,'삼랑성역사문화축제','2024-10-05','2024-10-13',7,
'전등사를 둘러싼 삼랑성은 외적의 침입을 막기위해 단군의 세아들이 쌓았다는 전설이 있다. 고려때 몽골의 침략을 피해 강화도로 천도한 뒤 삼랑성 가궐에서 항몽의지를 불태우며 120일 동안 대불정오설도량을 펼친 곳이기도 하다. 또한, 조선왕조실록을 250년 동안 보관했던 곳이기도 하며, 프랑스 군을 격퇴한 병인양요의 승전지다. ',
'인천광역시 강화군 길상면 전등사로 37-41 ','https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/5395818a-8646-4708-ba9b-643f24faa426_6.JPG');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 23, '송월동 동화마을 코스튬 페스티벌','2024-10-28','2024-10-29',15,
'송월동 동화마을 코스튬 페스티벌은 어린이들과 함께 만들어나가는 인천 중구의 대표적 어린이 축제이다.',
'인천광역시 중구 송월동3가 자유공원서로 45번길','https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/3f9ff7c2-828e-40d1-8dca-88448590b1db_2.jpeg');


INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL,'admin', 23,'정서진 피크닉 클래식','2024-09-21','2024-09-21',10,
'피크닉을 하듯 편안한 분위기에서 즐기는 인천 서구의 대표 야외 클래식 축제이다. 인천 서구민 누구나, 타 지역 관람객, 국내외 유수 클래식 예술가 및 애호가 모두 즐길 수 있다.','인천광역시 서구 청라대로 88 (청라동) 청라국제도시 야외음악당','https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/ef9e5602-4f91-4efc-8750-816bbe9ab6f5_3.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL,'admin', 23,'부평풍물대축제','2024-09-27','2024-09-29',11,
'부평풍물대축제는 풍물과 지역의 문화관광콘텐츠(세계최대의 지하상가-기네스 등재, 재즈의 발상지 부평음악도시, 캠프마켓 등)를 결합하여 공연문화와 풍성한 볼거리를 선보인다.','인천광역시 부평구 부평대로 60 (부평동) 부평대로, 신트리공원','https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/e7f655b5-b2d3-4923-90ba-6d7ce678b381_3.jpg');


-- 충청북도 정보
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 33,'증평인삼골축제','2024-10-03',
'2024-10-06',7,'청바지 입고 축제 가자!',
'충청북도 증평군 증평읍 송산리 649-45 증평보강천체육공원 일원', 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_f4c63980-86fb-4d78-ad73-f3240e2fa21a_1.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 33,'청원생명축제','2024-09-27',
'2024-10-06',1,'청원생명축제는 2008년부터 친환경을 테마로 구성된 대표적인 축제이다. 순수자연으로 더욱 빛나는 명품농산물인 청원생명브랜드를 홍보하고, 테마가 있다.',
'충청북도 청주시 청원구 오창읍 미래지로 99 미래지농촌테마공원' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/0b996b95-7aa9-4e4e-938b-3bd7cc503f78_3.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 33, '단양 온달문화축제', '2024-10-06',
'2024-10-09', 0, '온달관광지 오픈세트장에서 열리는 축제',
'충청북도 단양군 영춘면 온달로 23', 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/19dfa4c3-cc88-4dff-a23c-ef509a9bdb3a_9.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 33, '보은대추 축제', '2024-10-11',
'2024-10-20', 4, '대추에 설레, 보은에 올래!',
'충청북도 보은군 보은읍 뱃들로 54 보은읍 뱃들공원 및 속리산 일원', 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/b03d2e72-4fd7-4e9d-b640-7354bb30580a_3.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 33, '영동난계국악축제', '2024-10-09',
'2024-10-13', 7, '미리보는 2025영동세계국악엑스포, HIP한(韓) K-국악',
'충청북도 영동군 영동읍 영동힐링로 117', 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_ba335abd-29f3-4b10-8b7c-29dd2c777fbf_1.jpg');

-- 강원도 정보
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 32,'원주용수골가을꽃축제','2024-09-14',
'2024-10-06',10,'원주용수골가을꽃축제는 전국 유일무이한 리(서곡리)단위의 마을에서 파종, 식재, 제초, 솎아주기등의 작업을 마을분들이 주최가 되어 진행하는 꽃축제이다. 꽃양귀비축제 폐장 이후 이모작으로 가을꽃을 심고, 가꾸며 준비하였다.',
'강원특별자치도 원주시 판부면 용수골길 311 꽃양귀비축제장' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/04cf3274-b4bd-464b-acba-b89406600472_4.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 32,'동해 무릉제','2024-09-26',
'2024-09-26',0,'강원도 동해시에서 개최되는 무릉제는 동해시민의 화합과 번영을 염원하는 동해시 최대의 한바탕 잔치로서 동해시 제1명승지인 무릉계곡의 명칭을 이용하여 1984년부터 가을이 시작되는 시기에 열리고 있다.',
'강원특별자치도 동해시 덕골길 10 (천곡동)' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/71dd33a6-5abf-4967-a850-560ba2f9698f_4.JPG' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 32,'춘천 반려동물 페스티벌','2024-09-27',
'2024-09-29',3,'반려동물 친화도시 춘천에서 펼쳐지는 반려동물 페스티벌로 반려인과 반려동물, 비반려인 모두 함께 즐길 수 있으며 성숙한 반려동물 문화 정착을 위해 진행된다.',
'강원특별자치도 춘천시 서면 박사로 854 강원정보문화산업진흥원 애니메이션 박물관 일원' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/eb8683a5-3ca8-4636-8ad1-0d089533bb87_3.png' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 32,'인제가을꽃축제','2024-09-28',
'2024-10-20',6,'인제가을꽃축제는 이야기가 있는 이색적인 꽃밭 공간을 연출해 특별함을 더했다. 프로그램으로는 국화정원 관람, 야생화정원 관람, 대형 토피어리 및 조형물 관람, 수변둘레길(폭포) 산책, 수상 조형물 관람, 트리 클라이밍 체험, 전망대 포토존, 상시 공연 관람, 이벤트행사',
'강원특별자치도 인제군 북면 십이선녀탕길 16 ' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/813eddb1-c961-4572-95b5-490dd8f54804_3.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 32,'춘천술페스타','2024-10-02',
'2024-10-05',7,'춘천술페스타는 술의 도시 춘천에 걸맞는 전통주 문화체험 콘텐츠를 개발하고, 우리 술 발전의 토대를 마련하기 위해 2021년 시작된 전통주 페스티벌이다. ',
'강원특별자치도 춘천시 스포츠타운길399번길 25 KT상상마당 춘천아트센터  ' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/0961aace-b2b4-473f-84ae-f185f394a6a1_3.png' );

-- 제주도 정보
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 39,'휴애리 핑크뮬리 축제','2024-09-13',
'2024-11-17',7,'휴애리 핑크뮬리 축제는 제주도에서 가장 로맨틱한 순간을 선사하는 축제',
'제주특별자치도 서귀포시 남원읍 신례동로 256 ' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_4e70ff58-cba3-4484-8e2d-0704feac6136_1.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 39,'981 데이: 981 ON AIR','2024-09-06',
'2024-09-29',1,'9.81파크 제주가 중력을 테마로 함께 즐기는 브랜드데이',
'제주특별자치도 제주시 애월읍 천덕로 880-24 ' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_7636d9cf-184a-4fe4-a3d7-17e3aa429334_1.png');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 39,'구팔일 선셋 레이스','2024-07-20',
'2024-10-31',7,'여름 시즌에만 경험 가능한 선셋 레이스',
'제주특별자치도 제주시 애월읍 천덕로 880-24 ' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/d0525d1e-637e-4ac5-a919-e3b710de806f_3.png' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 39,'생태관광주간','2024-10-05',
'2024-10-09',7,'2022년부터 매해 운영되는 제주 생태관광주간',
'제주특별자치도 제주시 조천읍 조함해안로 19 1층' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_c8fa1db5-5288-4225-a824-622f198a6ab7_1.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 39,'제주광어대축제','2024-03-15',
'2024-10-06',7,'제주어류양식수협이 주최하고 제주특별자치도',
'제주특별자치도 제주시 연삼로 166 (오라이동)' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_2de24540-1c20-4ec5-8f29-19aa92ab4ea5_1.JPG' );


-- 서울특별시 정보
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin',11,'왔수유 페스타','2024-03-15','2024-11-07',7,'수유에 대한 궁금증과 설레임을 가지고 공항에 방문하는 것을 시작으로 세계의 대표 먹거리, 
놀거리, 볼거리인 프랑스의 마르쉐, 미국의 라스베가스 공연, 글로벌 디저트를 여권 스탬프투어를 통해 오감을 만족시키는 수유로 여행을 컨셉으로 한 축제이다.',
'서울특별시 강북구 수유동 한천로 139길','https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/cf82dbb9-d04e-4e21-a451-7ff88ff8be1c_9.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL,'admin',11,'서울거리공연 구석구석 라이브','2024-10-15','2024-12-06',1,'일낸 내내 발길 닿는 어디든,서울 구석구석에서 만나는거리예술공연',
'서울 종로구 세종로 광화문광장 사계정원' ,'https://cdn.imweb.me/upload/S202006225bc7e1dedcab6/0fecc9fecb2b4.png');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 11,'이토준지 호러 하우스','2024-10-15','2024-12-06',1,'일본 공포 만화 대가 이토준지 컬렉션이 홍대에서 열린다!',
'서울시 영등포구 은행로11','https://blog.kakaocdn.net/dn/cwfLcu/btsH19sG3Pw/fJMED27Vq30zVYIy6DDHL1/img.jpg');


-- 충청남도 정보
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 34, '피나클랜드 불꽃축제', '2024-09-14', 
'2024-11-09', 7, '밤하늘에 별이 쏟아지는 피나클랜드만의 특별한 불꽃축제', 
'충청남도 아산시 영인면 월선길 20-42' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_d6a40a6c-2fb2-4d12-9093-b437539b83c9_1.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 34, '태안 빛축제', '2024-01-01', 
'2024-12-31', 97, '365일이 아름다운 빛의 나라 태안의 랜드마크 태안빛축제', 
'충청남도 태안군 남면 마검포길 200 네이처월드' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_7be130ae-d136-45d7-9a5c-de3af5691c16_1.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 34, '태안 가을꽃박람회', '2024-09-13', 
'2024-11-04', 7, '특정 화훼에 국한하지 않고 다양한 품종을 선보입니다.', 
'충청남도 태안군 남면 마검포길 200 네이처월드' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_e4b65b19-8c0c-4436-9d07-dc6cd41e777a_1.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 34, '백제고도부여국화축제', '2024-10-25', 
'2024-11-03', 1, '국화 향기를 품은 서동과 선화의 사랑이야기.', 
'충청남도 부여군 부여읍 신기정로 15 부여 궁남지 일원' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_63d35fa7-b042-484a-b91a-c7bb44ac496f_1.JPG');


-- 경상북도 정보
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 37, '경북 K-스토리 페스티벌', '2024.09.27', 
'2024.09.29', 0, '경북 K-스토리 페스티벌은 문화와 역사 자원이 풍부한 경상북도에서 펼쳐지는 스토리', 
'경상북도 포항시 북구 삼호로 31 (덕수동)' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/8bfa4d04-4521-4738-8c14-5e6797f87ff6_3.png');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 37, '대한민국 독서대전 포항', '2024.09.27', 
'2024.09.29', 0, '국내 최대 독서문화축제인 대한민국 독서대전이 2024년 포항시에서 개최', 
'경상북도 포항시 북구 두호동 1003-4' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/79f3d2d9-06c1-4d18-9a0e-a7d38aa0857e_3.jpg');


-- 경상남도 정보
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 38, '감악산 꽃별 여행', '2024.09.13', 
'2024.10.13', 0, '감악산 꽃and별 여행축제는 낮에는 가을의 꽃의 전경을, 밤에는 별빛을 보며 방문객에게 가을의 감동과 추억을 선물한다.', 
'경상남도 거창군 신원면 덕산리 산 57' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/da8a4256-7c5c-4339-b552-74c4cd87c85b_3.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 38, '하동 북천 코스모스 메밀꽃 축제', '2024.09.13', 
'2024.09.29', 0, '메밀,코스모스 등 경관보전직불제 사업과 연계하여 농촌경관을 활용하고 농촌체험관광형 축제를 육성하기 위하여 시작된 행사', 
'경상남도 하동군 북천면 경서대로 2253-9' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/3d76c452-c3c6-4959-94e9-07200623c75d_3.jpg');


-- 전라북도 정보
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 35, '고창 핑크뮬리 축제', '2024.09.12', 
'2024.11.03', 0, '소멸해 지역에 희망을 불어넣고 정원식물 및 정원관광 콘텐츠를 발굴하는 꽃객프로젝트에서 진행하는 첫 번째 꽃파티 ‘고창 핑크뮬리 축제’이다.', 
'전북특별자치도 고창군 부안면 복분자로 307  ' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/765890a8-4873-46bc-9f1f-56bf680e12cf_3.png');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 35, '국가유산 미디어아트 익산 미륵사지', '2024.09.06', 
'2024.10.06', 0, '2024년 익산 미륵사지에서 개최되는 미디어아트 축제는 백제시대부터 조선시대까지의 역사와 유물을 현대의 첨단 기술과 결합하여 새로운 야간 경관을 선보이는 행사이다.', 
'전북특별자치도 익산시 금마면 기양리 32-7 익산 미륵사지 일원' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/598c5ace-ca37-41be-b180-e01f4a467008_3.jpg');

-- 부산 정보
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 21, '별바다부산 나이트마켓', '2024.09.21', 
'2024.10.13', 0, '부산의 대표 교역의 장이었던 구포나룻터를 상기하는 동시에 아름다운 낙동강변의 저녁노을과 화명생태공원의 아름다움', 
'부산광역시 북구 생태공원길 270 (화명동) 화명생태공원 연꽃단지 일원, 금빛노을브릿지' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/38e3bda1-074b-4dab-bd08-a2c2b9e4d21f_3.jpg');

-- 울산 정보
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 26, '울산고래축제', '2024.09.26', 
'2024.09.29', 0, '수천 년 전 선사시대부터 이어져 온 고래문화를 기념하는 울산의 대표축제인 울산고래축제는 근대 포경산업의 중심지였던 장생포를 기반으로 1995년부터 개최되고 있다', 
'울산광역시 남구 장생포고래로 265 (매암동) 장생포 고래문화특구 일원' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/202a3575-509f-4e34-bbf8-59328d7b89eb_3.jpg');

-- 대구 정보
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 22, '수성못페스티벌', '2024.09.27', 
'2024.09.29', 0, '수성못페스티벌은 대구시민이 가장 즐겨찾는 수성못을 배경으로 시민들에게 예술체험을 선사하는 축제이다. ', 
'대구광역시 수성구 무학로 112 ' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/f84c717a-ec29-48f7-8980-4b33e3a346b8_3.png');

--경기도 정보
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 31,'벽초지수목원 가을꽃 국화축제','2024-09-21',
'2024-11-17',10,'동서양의 아름다운 정원을 모두 품은 곳',
'경기도 파주시 광탄면 부흥로 242 벽초지수목원' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_5b702834-f591-473f-af25-0b0d91911191_1.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 31,'낭만등불축제','2024-05-01',
'2025-04-30',11,'아름다운 수목원을 환상적으로 물들일 낭만등불축제',
'경기도 남양주시 불암산로59번길 48-31 (별내동) ' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_d2f258a8-33c2-4cd9-8736-41be5c9407d7_1.jpg' );

--전남, 광주, 대전, 인천, 세종 정보
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 36,'곡성심청어린이대축제','2024-10-24',
'2024-10-27',2,'아이에게 선물하는 특별한 하루',
'전라남도 곡성군 오곡면 기차마을로 232' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_d3731db2-1b91-4a31-8737-ad2ee11482f9_1.JPG' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 36,'고흥유자축제','2024-11-07',
'2024-11-10',1,'11월 고흥은 비타민C 유자천국!',
'전라남도 고흥군 풍양면 한동리 701-7번지 일원' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/c9b71aaa-d087-4136-a9d2-f28c7d6dd1c2_3.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 24,'광주서창억새축제','2024-10-17',
'2024-10-20',4,'은빛 억새가 전하는 가을로 여러분을 초대합니다.',
'광주광역시 서구 서창둑길 377 (벽진동)' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_201e81f4-7b8e-49fc-b43b-69d3542783ea_1.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 25,'대전한우숯불구이축제','2024-10-01',
'2024-10-06',3,'축제장에서 직접 구워먹을 수 있는 우수한우 할인 판매전 및 대전대표수제맥주페스티벌',
'대전광역시 유성구 유성대로 26-37 (원내동) 롯데마트 서대전점' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_40bc3a5a-8539-4014-9313-894e6482adb2_1.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 23,'만수천 빛의거리','2024-02-01',
'2024-12-31',4,'원도심을 밝히는 대형 크리스마스 트리 등 왕복 2km의 빛의 거리 조성',
'인천광역시 남동구 만수동 1003 일원' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_ad5c67ee-205c-4cba-964e-6c0b968996da_1.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 29,'세종축제','2024-10-09',
'2024-10-12',29,'세종시 브랜드 공간(호수, 중앙공원)을 활용한 플랫폼형 도시문화축제',
'세종특별자치시 호수공원길 155  세종호수공원, 세종중앙공원 일원' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_9baec2f1-84c7-4b70-aa3e-b8f6fe76b0c1_1.jpg' );


--테마 정보삽입
INSERT INTO THEME_OF_FESTIVAL VALUES(1, 'experience');
-- INSERT INTO THEME_OF_FESTIVAL VALUES(2, 'tradition');
INSERT INTO THEME_OF_FESTIVAL VALUES(3, 'experience');
INSERT INTO THEME_OF_FESTIVAL VALUES(4, 'experience');
INSERT INTO THEME_OF_FESTIVAL VALUES(5, 'tradition');
INSERT INTO THEME_OF_FESTIVAL VALUES(6, 'food');
INSERT INTO THEME_OF_FESTIVAL VALUES(7, 'experience');
INSERT INTO THEME_OF_FESTIVAL VALUES(8, 'culture');
INSERT INTO THEME_OF_FESTIVAL VALUES(9, 'food');
INSERT INTO THEME_OF_FESTIVAL VALUES(10, 'tradition');
INSERT INTO THEME_OF_FESTIVAL VALUES(11, 'culture');
INSERT INTO THEME_OF_FESTIVAL VALUES(12, 'tradition');
INSERT INTO THEME_OF_FESTIVAL VALUES(13, 'experience');
INSERT INTO THEME_OF_FESTIVAL VALUES(14, 'experience');
INSERT INTO THEME_OF_FESTIVAL VALUES(15, 'experience');
INSERT INTO THEME_OF_FESTIVAL VALUES(16, 'culture');
INSERT INTO THEME_OF_FESTIVAL VALUES(17, 'experience');
INSERT INTO THEME_OF_FESTIVAL VALUES(18, 'experience');
INSERT INTO THEME_OF_FESTIVAL VALUES(19, 'culture');
INSERT INTO THEME_OF_FESTIVAL VALUES(20, 'experience');
INSERT INTO THEME_OF_FESTIVAL VALUES(21, 'food');


-- 리뷰테이블 생성
CREATE TABLE RV (
    RV_NO NUMBER NOT NULL,               -- 리뷰번호 (Review Number)
    FESTIVAL_NO NUMBER NOT NULL,         -- 축제코드 (Festival Code)
    MEM_ID VARCHAR2(50) NOT NULL,             -- 회원아이디 (Member ID)
    RV_TITLE VARCHAR2(60) NOT NULL,
    RV_CONTENT VARCHAR2(4000) NOT NULL,         -- 리뷰 내용 (Review Content)
    RV_IMG VARCHAR(255),              -- 게시글이미지 (Post Image)
    RV_COUNT INT DEFAULT 0,            -- 공감 (Likes)
    RV_DATE DATE DEFAULT SYSDATE NOT NULL, -- 게시글 작성일 (Post Creation Date)
    RV_STATUS VARCHAR2(2) DEFAULT 'Y'
); 
  --  PRIMARY KEY (RV_NO),              -- Primary Key constraint on 리뷰번호
  --  FOREIGN KEY (FESTIVAL_NO) REFERENCES 축제(FESTIVAL_NO),  -- 축제 테이블과 외래 키 관계
  --  FOREIGN KEY (MEM_ID) REFERENCES 회원(MEM_ID)           -- 회원 테이블과 외래 키 관계


-- 리뷰 시퀀스 생성
CREATE SEQUENCE RNO
START WITH 1;


-- 리뷰 데이터 삽입

-- 축제번호 11번 후기
INSERT INTO RV VALUES(RNO.NEXTVAL, 
11, 'whdrns456', '너무 재밌습니다', '정말 너무 재미있었습니다.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
11, 'whdrns123', '양민욱입니다 너무 재밌습니다', '정말 너무 재미있었습니다.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
11, 'whdrns777', '허 완입니다 너무 재밌습니다', '정말 너무 재미있었습니다.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
11, 'whdrns1675', '김인창입니다 굳입니다', '정말 너무 재미있었습니다.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
11, 'totoro', '김정현입니다 즐겁습니다', '정말 너무 재미있었습니다.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
11, 'dddaaa', '임수자진자입니다 즐겁습니다', '정말 너무 재미있었습니다.', 
NULL, 0, SYSDATE, 'Y'
);


-- 축제 1번 후기
INSERT INTO RV VALUES(RNO.NEXTVAL, 
1, 'whdrns456', '너무 재밌습니다', '정말 너무 재미있었습니다.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
1, 'whdrns123', '양민욱입니다 너무 재밌습니다', '정말 너무 재미있었습니다.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
1, 'whdrns777', '허 완입니다 너무 재밌습니다', '정말 너무 재미있었습니다.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
1, 'whdrns1675', '김인창입니다 굳입니다', '정말 너무 재미있었습니다.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
1, 'totoro', '김정현입니다 즐겁습니다', '정말 너무 재미있었습니다.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
1, 'dddaaa', '임수자진자입니다 즐겁습니다', '정말 너무 재미있었습니다.', 
NULL, 0, SYSDATE, 'Y'
);
-- 축제 2번 후기

SELECT * FROM RV
WHERE (RV_CONTENT LIKE '%'|| '너무' ||'%') AND FESTIVAL_NO = 11;



COMMIT;