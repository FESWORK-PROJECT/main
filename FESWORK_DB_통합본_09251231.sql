-- ��� ������� �ʱ�ȭ
DROP TABLE MEMBER;
DROP SEQUENCE MEMBER_SEQ;
DROP TABLE FESTIVAL;
DROP TABLE THEME_OF_FESTIVAL;
DROP TABLE THEME;
DROP SEQUENCE FNO;
DROP TABLE RV;
DROP SEQUENCE RNO;

-- ��� ���̺� ����
CREATE TABLE MEMBER (
	MEM_NO NUMBER NOT NULL,
    MEM_ID VARCHAR2(30) PRIMARY KEY,
	MEM_PASSWORD VARCHAR2(50) NOT NULL,	
    MEM_NAME VARCHAR2(20) NOT NULL,
    GENDER VARCHAR2(6),
    EMAIL VARCHAR2(30),
    BIRTH VARCHAR2(30),
	PHONE VARCHAR2(13),
	MEM_LEVEL VARCHAR2(20) DEFAULT 'ȸ��',
	SIGNUP_DATE	DATE DEFAULT SYSDATE,
	RESIGN_DATE	DATE DEFAULT NULL
);

-- ��������� ����
CREATE SEQUENCE MEMBER_SEQ
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
    
-- ��� ���� �߰�
INSERT INTO MEMBER(MEM_NO, MEM_ID, MEM_PASSWORD, MEM_NAME,GENDER, EMAIL, MEM_LEVEL)
VALUES(MEMBER_SEQ.NEXTVAL, 'admin', '1234', '������' ,'��', '1gjdhks1@naver.com', '������');


-- ���� ���̺� ����
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
COMMENT ON COLUMN FESTIVAL.FESTIVAL_NO IS '�����ڵ�';
COMMENT ON COLUMN FESTIVAL.MEM_ID IS 'ȸ�����̵�';
COMMENT ON COLUMN FESTIVAL.LOCAL_CODE IS '�����ڵ�';
COMMENT ON COLUMN FESTIVAL.FESTIVAL_NAME IS '������';
COMMENT ON COLUMN FESTIVAL.OPEN_DATE IS '����������';
COMMENT ON COLUMN FESTIVAL.CLOSE_DATE IS '����������';
COMMENT ON COLUMN FESTIVAL.FES_LIKE IS '�������ƿ�';
COMMENT ON COLUMN FESTIVAL.FES_DESCRIPTION IS '��������';
COMMENT ON COLUMN FESTIVAL.FES_ADD IS '�����ּ�';
COMMENT ON COLUMN FESTIVAL.FES_IMAGE IS '�����̹���';


-- �׸��� ���� ���̺� ����
CREATE TABLE THEME_OF_FESTIVAL (
   FESTIVAL_NO NUMBER NOT NULL ,
   THEME_CODE VARCHAR2(20)
);

-- �׸��ڵ� ����
INSERT INTO THEME_OF_FESTIVAL VALUES(2, 'tradition');


-- �׸� ���̺� ����
CREATE TABLE THEME (
   THEME_CODE NUMBER ,
   THEME_NAME VARCHAR2(20) NULL
);

-- ���� ������ ����
CREATE SEQUENCE FNO
START WITH 1;


-- ��õ������ ����
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 23, '��õ�����������', '2024-09-27', '2024-09-28', 8, 
' ��õ������������� �������� �� �����ϰ�  ��̿� ������ �����ϰ��� �Ѵ�.'
,'��õ������ ���� ȭ������ 53 (������)','https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/21f0d8ab-657e-46cf-af3b-1543f2e43013_3.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 23,'��������繮ȭ����','2024-10-05','2024-10-13',7,
'����縦 �ѷ��� ������� ������ ħ���� �������� �ܱ��� ���Ƶ��� �׾Ҵٴ� ������ �ִ�. ����� ������ ħ���� ���� ��ȭ���� õ���� �� ����� ���ȿ��� �׸������� ���¿�� 120�� ���� ��������������� ��ģ ���̱⵵ �ϴ�. ����, ���������Ƿ��� 250�� ���� �����ߴ� ���̱⵵ �ϸ�, ������ ���� ������ ���ξ���� ��������. ',
'��õ������ ��ȭ�� ���� ������ 37-41 ','https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/5395818a-8646-4708-ba9b-643f24faa426_6.JPG');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 23, '�ۿ��� ��ȭ���� �ڽ�Ƭ �佺Ƽ��','2024-10-28','2024-10-29',15,
'�ۿ��� ��ȭ���� �ڽ�Ƭ �佺Ƽ���� ��̵�� �Բ� �������� ��õ �߱��� ��ǥ�� ��� �����̴�.',
'��õ������ �߱� �ۿ���3�� ������������ 45����','https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/3f9ff7c2-828e-40d1-8dca-88448590b1db_2.jpeg');


INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL,'admin', 23,'������ ��ũ�� Ŭ����','2024-09-21','2024-09-21',10,
'��ũ���� �ϵ� ����� �����⿡�� ���� ��õ ������ ��ǥ �߿� Ŭ���� �����̴�. ��õ ������ ������, Ÿ ���� ������, ������ ���� Ŭ���� ������ �� ��ȣ�� ��� ��� �� �ִ�.','��õ������ ���� û���� 88 (û��) û�������� �߿����Ǵ�','https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/ef9e5602-4f91-4efc-8750-816bbe9ab6f5_3.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL,'admin', 23,'����ǳ��������','2024-09-27','2024-09-29',11,
'����ǳ���������� ǳ���� ������ ��ȭ����������(�����ִ��� ���ϻ�-��׽� ����, ������ �߻��� �������ǵ���, ķ������ ��)�� �����Ͽ� ������ȭ�� ǳ���� ���Ÿ��� �����δ�.','��õ������ ���� ������ 60 (����) ������, ��Ʈ������','https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/e7f655b5-b2d3-4923-90ba-6d7ce678b381_3.jpg');


-- ��û�ϵ� ����
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 33,'�����λ������','2024-10-03',
'2024-10-06',7,'û���� �԰� ���� ����!',
'��û�ϵ� ���� ������ �ۻ긮 649-45 ���򺸰�õü������ �Ͽ�', 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_f4c63980-86fb-4d78-ad73-f3240e2fa21a_1.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 33,'û����������','2024-09-27',
'2024-10-06',1,'û������������ 2008����� ģȯ���� �׸��� ������ ��ǥ���� �����̴�. �����ڿ����� ���� ������ ��ǰ��깰�� û������귣�带 ȫ���ϰ�, �׸��� �ִ�.',
'��û�ϵ� û�ֽ� û���� ��â�� �̷����� 99 �̷��������׸�����' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/0b996b95-7aa9-4e4e-938b-3bd7cc503f78_3.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 33, '�ܾ� �´޹�ȭ����', '2024-10-06',
'2024-10-09', 0, '�´ް����� ���¼�Ʈ�忡�� ������ ����',
'��û�ϵ� �ܾ籺 ����� �´޷� 23', 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/19dfa4c3-cc88-4dff-a23c-ef509a9bdb3a_9.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 33, '�������� ����', '2024-10-11',
'2024-10-20', 4, '���߿� ����, ������ �÷�!',
'��û�ϵ� ������ ������ ���� 54 ������ ������ �� �Ӹ��� �Ͽ�', 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/b03d2e72-4fd7-4e9d-b640-7354bb30580a_3.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 33, '�������豹������', '2024-10-09',
'2024-10-13', 7, '�̸����� 2025�������豹�ǿ�����, HIP��(��) K-����',
'��û�ϵ� ������ ������ ���������� 117', 'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_ba335abd-29f3-4b10-8b7c-29dd2c777fbf_1.jpg');

-- ������ ����
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 32,'���ֿ������������','2024-09-14',
'2024-10-06',10,'���ֿ�������������� ���� ���Ϲ����� ��(���)������ �������� ����, ����, ����, �Ծ��ֱ���� �۾��� �����е��� ���ְ� �Ǿ� �����ϴ� �������̴�. �ɾ�ͺ����� ���� ���� �̸������� �������� �ɰ�, ���ٸ� �غ��Ͽ���.',
'����Ư����ġ�� ���ֽ� �Ǻθ� ������ 311 �ɾ�ͺ�������' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/04cf3274-b4bd-464b-acba-b89406600472_4.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 32,'���� ������','2024-09-26',
'2024-09-26',0,'������ ���ؽÿ��� ���ֵǴ� �������� ���ؽù��� ȭ�հ� ������ �����ϴ� ���ؽ� �ִ��� �ѹ��� ��ġ�μ� ���ؽ� ��1������� ��������� ��Ī�� �̿��Ͽ� 1984����� ������ ���۵Ǵ� �ñ⿡ ������ �ִ�.',
'����Ư����ġ�� ���ؽ� ����� 10 (õ�)' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/71dd33a6-5abf-4967-a850-560ba2f9698f_4.JPG' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 32,'��õ �ݷ����� �佺Ƽ��','2024-09-27',
'2024-09-29',3,'�ݷ����� ģȭ���� ��õ���� �������� �ݷ����� �佺Ƽ���� �ݷ��ΰ� �ݷ�����, ��ݷ��� ��� �Բ� ��� �� ������ ������ �ݷ����� ��ȭ ������ ���� ����ȴ�.',
'����Ư����ġ�� ��õ�� ���� �ڻ�� 854 ����������ȭ�������� �ִϸ��̼� �ڹ��� �Ͽ�' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/eb8683a5-3ca8-4636-8ad1-0d089533bb87_3.png' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 32,'��������������','2024-09-28',
'2024-10-20',6,'���������������� �̾߱Ⱑ �ִ� �̻����� �ɹ� ������ ������ Ư������ ���ߴ�. ���α׷����δ� ��ȭ���� ����, �߻�ȭ���� ����, ���� ���Ǿ �� ������ ����, �����ѷ���(����) ��å, ���� ������ ����, Ʈ�� Ŭ���̹� ü��, ������ ������, ��� ���� ����, �̺�Ʈ���',
'����Ư����ġ�� ������ �ϸ� ���̼������� 16 ' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/813eddb1-c961-4572-95b5-490dd8f54804_3.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 32,'��õ���佺Ÿ','2024-10-02',
'2024-10-05',7,'��õ���佺Ÿ�� ���� ���� ��õ�� �ɸ´� ������ ��ȭü�� �������� �����ϰ�, �츮 �� ������ ��븦 �����ϱ� ���� 2021�� ���۵� ������ �佺Ƽ���̴�. ',
'����Ư����ġ�� ��õ�� ������Ÿ���399���� 25 KT��󸶴� ��õ��Ʈ����  ' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/0961aace-b2b4-473f-84ae-f185f394a6a1_3.png' );

-- ���ֵ� ����
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 39,'�޾ָ� ��ũ�ĸ� ����','2024-09-13',
'2024-11-17',7,'�޾ָ� ��ũ�ĸ� ������ ���ֵ����� ���� �θ�ƽ�� ������ �����ϴ� ����',
'����Ư����ġ�� �������� ������ �ŷʵ��� 256 ' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_4e70ff58-cba3-4484-8e2d-0704feac6136_1.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 39,'981 ����: 981 ON AIR','2024-09-06',
'2024-09-29',1,'9.81��ũ ���ְ� �߷��� �׸��� �Բ� ���� �귣�嵥��',
'����Ư����ġ�� ���ֽ� �ֿ��� õ���� 880-24 ' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_7636d9cf-184a-4fe4-a3d7-17e3aa429334_1.png');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 39,'������ ���� ���̽�','2024-07-20',
'2024-10-31',7,'���� ���𿡸� ���� ������ ���� ���̽�',
'����Ư����ġ�� ���ֽ� �ֿ��� õ���� 880-24 ' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/d0525d1e-637e-4ac5-a919-e3b710de806f_3.png' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 39,'���°����ְ�','2024-10-05',
'2024-10-09',7,'2022����� ���� ��Ǵ� ���� ���°����ְ�',
'����Ư����ġ�� ���ֽ� ��õ�� �����ؾȷ� 19 1��' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_c8fa1db5-5288-4225-a824-622f198a6ab7_1.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 39,'���ֱ��������','2024-03-15',
'2024-10-06',7,'���־����ļ����� �����ϰ� ����Ư����ġ��',
'����Ư����ġ�� ���ֽ� ����� 166 (�����̵�)' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_2de24540-1c20-4ec5-8f29-19aa92ab4ea5_1.JPG' );


-- ����Ư���� ����
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin',11,'�Լ��� �佺Ÿ','2024-03-15','2024-11-07',7,'������ ���� �ñ����� �������� ������ ���׿� �湮�ϴ� ���� �������� ������ ��ǥ �԰Ÿ�, 
��Ÿ�, ���Ÿ��� �������� ������, �̱��� �󽺺����� ����, �۷ι� ����Ʈ�� ���� ��������� ���� ������ ������Ű�� ������ ������ �������� �� �����̴�.',
'����Ư���� ���ϱ� ������ ��õ�� 139��','https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/cf82dbb9-d04e-4e21-a451-7ff88ff8be1c_9.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL,'admin',11,'����Ÿ����� �������� ���̺�','2024-10-15','2024-12-06',1,'�ϳ� ���� �߱� ��� ����,���� ������������ �����°Ÿ���������',
'���� ���α� ������ ��ȭ������ �������' ,'https://cdn.imweb.me/upload/S202006225bc7e1dedcab6/0fecc9fecb2b4.png');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 11,'�������� ȣ�� �Ͽ콺','2024-10-15','2024-12-06',1,'�Ϻ� ���� ��ȭ �밡 �������� �÷����� ȫ�뿡�� ������!',
'����� �������� �����11','https://blog.kakaocdn.net/dn/cwfLcu/btsH19sG3Pw/fJMED27Vq30zVYIy6DDHL1/img.jpg');


-- ��û���� ����
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 34, '�ǳ�Ŭ���� �Ҳ�����', '2024-09-14', 
'2024-11-09', 7, '���ϴÿ� ���� ������� �ǳ�Ŭ���常�� Ư���� �Ҳ�����', 
'��û���� �ƻ�� ���θ� ������ 20-42' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_d6a40a6c-2fb2-4d12-9093-b437539b83c9_1.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 34, '�¾� ������', '2024-01-01', 
'2024-12-31', 97, '365���� �Ƹ��ٿ� ���� ���� �¾��� ���帶ũ �¾Ⱥ�����', 
'��û���� �¾ȱ� ���� �������� 200 ����ó����' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_7be130ae-d136-45d7-9a5c-de3af5691c16_1.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 34, '�¾� �����ɹڶ�ȸ', '2024-09-13', 
'2024-11-04', 7, 'Ư�� ȭ�ѿ� �������� �ʰ� �پ��� ǰ���� �����Դϴ�.', 
'��û���� �¾ȱ� ���� �������� 200 ����ó����' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_e4b65b19-8c0c-4436-9d07-dc6cd41e777a_1.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 34, '�������ο���ȭ����', '2024-10-25', 
'2024-11-03', 1, '��ȭ ��⸦ ǰ�� ������ ��ȭ�� ����̾߱�.', 
'��û���� �ο��� �ο��� �ű����� 15 �ο� �ó��� �Ͽ�' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_63d35fa7-b042-484a-b91a-c7bb44ac496f_1.JPG');


-- ���ϵ� ����
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 37, '��� K-���丮 �佺Ƽ��', '2024.09.27', 
'2024.09.29', 0, '��� K-���丮 �佺Ƽ���� ��ȭ�� ���� �ڿ��� ǳ���� ���ϵ����� �������� ���丮', 
'���ϵ� ���׽� �ϱ� ��ȣ�� 31 (������)' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/8bfa4d04-4521-4738-8c14-5e6797f87ff6_3.png');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 37, '���ѹα� �������� ����', '2024.09.27', 
'2024.09.29', 0, '���� �ִ� ������ȭ������ ���ѹα� ���������� 2024�� ���׽ÿ��� ����', 
'���ϵ� ���׽� �ϱ� ��ȣ�� 1003-4' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/79f3d2d9-06c1-4d18-9a0e-a7d38aa0857e_3.jpg');


-- ��󳲵� ����
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 38, '���ǻ� �ɺ� ����', '2024.09.13', 
'2024.10.13', 0, '���ǻ� ��and�� ���������� ������ ������ ���� ������, �㿡�� ������ ���� �湮������ ������ ������ �߾��� �����Ѵ�.', 
'��󳲵� ��â�� �ſ��� ���긮 �� 57' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/da8a4256-7c5c-4339-b552-74c4cd87c85b_3.jpg');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 38, '�ϵ� ��õ �ڽ��� �޹в� ����', '2024.09.13', 
'2024.09.29', 0, '�޹�,�ڽ��� �� ������������� ����� �����Ͽ� ���̰���� Ȱ���ϰ� ����ü������� ������ �����ϱ� ���Ͽ� ���۵� ���', 
'��󳲵� �ϵ��� ��õ�� �漭��� 2253-9' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/3d76c452-c3c6-4959-94e9-07200623c75d_3.jpg');


-- ����ϵ� ����
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 35, '��â ��ũ�ĸ� ����', '2024.09.12', 
'2024.11.03', 0, '�Ҹ��� ������ ����� �Ҿ�ְ� �����Ĺ� �� �������� �������� �߱��ϴ� �ɰ�������Ʈ���� �����ϴ� ù ��° ����Ƽ ����â ��ũ�ĸ� �������̴�.', 
'����Ư����ġ�� ��â�� �ξȸ� �����ڷ� 307  ' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/765890a8-4873-46bc-9f1f-56bf680e12cf_3.png');

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 35, '�������� �̵���Ʈ �ͻ� �̸�����', '2024.09.06', 
'2024.10.06', 0, '2024�� �ͻ� �̸��������� ���ֵǴ� �̵���Ʈ ������ �����ô���� �����ô������ ����� ������ ������ ÷�� ����� �����Ͽ� ���ο� �߰� ����� �����̴� ����̴�.', 
'����Ư����ġ�� �ͻ�� �ݸ��� ��縮 32-7 �ͻ� �̸����� �Ͽ�' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/598c5ace-ca37-41be-b180-e01f4a467008_3.jpg');

-- �λ� ����
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 21, '���ٴٺλ� ����Ʈ����', '2024.09.21', 
'2024.10.13', 0, '�λ��� ��ǥ ������ ���̾��� ���������͸� ����ϴ� ���ÿ� �Ƹ��ٿ� ���������� ��������� ȭ����°����� �Ƹ��ٿ�', 
'�λ걤���� �ϱ� ���°����� 270 (ȭ��) ȭ����°��� ���ɴ��� �Ͽ�, �ݺ������긴��' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/38e3bda1-074b-4dab-bd08-a2c2b9e4d21f_3.jpg');

-- ��� ����
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 26, '��������', '2024.09.26', 
'2024.09.29', 0, '��õ �� �� ����ô���� �̾��� �� ����ȭ�� ����ϴ� ����� ��ǥ������ ���������� �ٴ� �������� �߽������� ������� ������� 1995����� ���ֵǰ� �ִ�', 
'��걤���� ���� ��������� 265 (�žϵ�) ����� ����ȭƯ�� �Ͽ�' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/202a3575-509f-4e34-bbf8-59328d7b89eb_3.jpg');

-- �뱸 ����
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 22, '�������佺Ƽ��', '2024.09.27', 
'2024.09.29', 0, '�������佺Ƽ���� �뱸�ù��� ���� ���ã�� �������� ������� �ùε鿡�� ����ü���� �����ϴ� �����̴�. ', 
'�뱸������ ������ ���з� 112 ' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/f84c717a-ec29-48f7-8980-4b33e3a346b8_3.png');

--��⵵ ����
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 31,'����������� ������ ��ȭ����','2024-09-21',
'2024-11-17',10,'�������� �Ƹ��ٿ� ������ ��� ǰ�� ��',
'��⵵ ���ֽ� ��ź�� ����� 242 �����������' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_5b702834-f591-473f-af25-0b0d91911191_1.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 31,'�����������','2024-05-01',
'2025-04-30',11,'�Ƹ��ٿ� ������� ȯ�������� ������ �����������',
'��⵵ �����ֽ� �Ҿϻ��59���� 48-31 (������) ' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_d2f258a8-33c2-4cd9-8736-41be5c9407d7_1.jpg' );

--����, ����, ����, ��õ, ���� ����
INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 36,'���û��̴�����','2024-10-24',
'2024-10-27',2,'���̿��� �����ϴ� Ư���� �Ϸ�',
'���󳲵� ��� ����� ���������� 232' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_d3731db2-1b91-4a31-8737-ad2ee11482f9_1.JPG' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 36,'������������','2024-11-07',
'2024-11-10',1,'11�� ������ ��Ÿ��C ����õ��!',
'���󳲵� ���ﱺ ǳ��� �ѵ��� 701-7���� �Ͽ�' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/c9b71aaa-d087-4136-a9d2-f28c7d6dd1c2_3.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 24,'���ּ�â�������','2024-10-17',
'2024-10-20',4,'���� ����� ���ϴ� ������ �������� �ʴ��մϴ�.',
'���ֱ����� ���� ��â�ϱ� 377 (������)' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_201e81f4-7b8e-49fc-b43b-69d3542783ea_1.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 25,'�����ѿ콡�ұ�������','2024-10-01',
'2024-10-06',3,'�����忡�� ���� �������� �� �ִ� ����ѿ� ���� �Ǹ��� �� ������ǥ���������佺Ƽ��',
'���������� ������ ������� 26-37 (������) �Ե���Ʈ ��������' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_40bc3a5a-8539-4014-9313-894e6482adb2_1.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 23,'����õ ���ǰŸ�','2024-02-01',
'2024-12-31',4,'�������� ������ ���� ũ�������� Ʈ�� �� �պ� 2km�� ���� �Ÿ� ����',
'��õ������ ������ ������ 1003 �Ͽ�' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_ad5c67ee-205c-4cba-964e-6c0b968996da_1.jpg' );

INSERT INTO FESTIVAL VALUES(FNO.NEXTVAL, 'admin', 29,'��������','2024-10-09',
'2024-10-12',29,'������ �귣�� ����(ȣ��, �߾Ӱ���)�� Ȱ���� �÷����� ���ù�ȭ����',
'����Ư����ġ�� ȣ�������� 155  ����ȣ������, �����߾Ӱ��� �Ͽ�' ,'https://kfescdn.visitkorea.or.kr/kfes/upload/contents/db/300_9baec2f1-84c7-4b70-aa3e-b8f6fe76b0c1_1.jpg' );


--�׸� ��������
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


-- �������̺� ����
CREATE TABLE RV (
    RV_NO NUMBER NOT NULL,               -- �����ȣ (Review Number)
    FESTIVAL_NO NUMBER NOT NULL,         -- �����ڵ� (Festival Code)
    MEM_ID VARCHAR2(50) NOT NULL,             -- ȸ�����̵� (Member ID)
    RV_TITLE VARCHAR2(60) NOT NULL,
    RV_CONTENT VARCHAR2(4000) NOT NULL,         -- ���� ���� (Review Content)
    RV_IMG VARCHAR(255),              -- �Խñ��̹��� (Post Image)
    RV_COUNT INT DEFAULT 0,            -- ���� (Likes)
    RV_DATE DATE DEFAULT SYSDATE NOT NULL, -- �Խñ� �ۼ��� (Post Creation Date)
    RV_STATUS VARCHAR2(2) DEFAULT 'Y'
); 
  --  PRIMARY KEY (RV_NO),              -- Primary Key constraint on �����ȣ
  --  FOREIGN KEY (FESTIVAL_NO) REFERENCES ����(FESTIVAL_NO),  -- ���� ���̺�� �ܷ� Ű ����
  --  FOREIGN KEY (MEM_ID) REFERENCES ȸ��(MEM_ID)           -- ȸ�� ���̺�� �ܷ� Ű ����


-- ���� ������ ����
CREATE SEQUENCE RNO
START WITH 1;


-- ���� ������ ����

-- ������ȣ 11�� �ı�
INSERT INTO RV VALUES(RNO.NEXTVAL, 
11, 'whdrns456', '�ʹ� ��ս��ϴ�', '���� �ʹ� ����־����ϴ�.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
11, 'whdrns123', '��ο��Դϴ� �ʹ� ��ս��ϴ�', '���� �ʹ� ����־����ϴ�.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
11, 'whdrns777', '�� ���Դϴ� �ʹ� ��ս��ϴ�', '���� �ʹ� ����־����ϴ�.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
11, 'whdrns1675', '����â�Դϴ� ���Դϴ�', '���� �ʹ� ����־����ϴ�.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
11, 'totoro', '�������Դϴ� ��̽��ϴ�', '���� �ʹ� ����־����ϴ�.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
11, 'dddaaa', '�Ӽ��������Դϴ� ��̽��ϴ�', '���� �ʹ� ����־����ϴ�.', 
NULL, 0, SYSDATE, 'Y'
);


-- ���� 1�� �ı�
INSERT INTO RV VALUES(RNO.NEXTVAL, 
1, 'whdrns456', '�ʹ� ��ս��ϴ�', '���� �ʹ� ����־����ϴ�.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
1, 'whdrns123', '��ο��Դϴ� �ʹ� ��ս��ϴ�', '���� �ʹ� ����־����ϴ�.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
1, 'whdrns777', '�� ���Դϴ� �ʹ� ��ս��ϴ�', '���� �ʹ� ����־����ϴ�.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
1, 'whdrns1675', '����â�Դϴ� ���Դϴ�', '���� �ʹ� ����־����ϴ�.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
1, 'totoro', '�������Դϴ� ��̽��ϴ�', '���� �ʹ� ����־����ϴ�.', 
NULL, 0, SYSDATE, 'Y'
);

INSERT INTO RV VALUES(RNO.NEXTVAL, 
1, 'dddaaa', '�Ӽ��������Դϴ� ��̽��ϴ�', '���� �ʹ� ����־����ϴ�.', 
NULL, 0, SYSDATE, 'Y'
);
-- ���� 2�� �ı�

SELECT * FROM RV
WHERE (RV_CONTENT LIKE '%'|| '�ʹ�' ||'%') AND FESTIVAL_NO = 11;



COMMIT;