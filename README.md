# 환경설정

<br>

### ■ 프로젝트환경설정
<br>

1. 인코딩설정   
	* Window-Preferences-Workspace-Text file encoding-Other: UTF-8로 변경-Apply   
	* Window-Preferences-Web-Css Files-Encoding: ISO 10646/Unicode(UTF-8)로 변경-Apply   
	* Window-Preferences-Web-HTML Files-Encoding: ISO 10646/Unicode(UTF-8)로 변경-Apply   
	* Window-Preferences-Web-JSP Files-Encoding: ISO 10646/Unicode(UTF-8)로 변경-Apply   
	* Window-Preferences-Web-XML Files-Encoding: ISO 10646/Unicode(UTF-8)로 변경-Apply   
	* Window-Preferences-General-Editors-TextEditors-Spelling-Encoding-UTF-8 체크-Apply   
<br>
2. jdk 설정   
	* Window-Preferences-Java-Installed JREs-Add-[C:\Program Files\Jav\jdk-11] 선택-해당경로체크-Apply   
	* Window-Preferences-Java-Compiler-Compiler compliance level: 11로 변경   
<br>

---
<br>

### ■ 서버환경설정
<br>

1. 아파치 톰캣 경로설정   
	* Window-Preferences-Server-Runtime Environments-Add-Apache Tomcat v9.0선택-Next-Browse-[C:\dev\apache-tomcat-9.0.93] 선택-Finish   
<br>

2. 아파치 톰캣 라이브러리 추가   
	* fesworkProject 우클릭 - Properties - Java Build Path - Libraries - Classpath - add Library - Server Runtime - Apache Tomcat v9.0   
<br>

3. 프로젝트 Facets 체크   
	* fesworkProject 우클릭 - Properties - Project Facets에서   
	
		* Dynamic Web Module의 Version: 4.0   
		* Java의 Version: 11   
		* JavaScript의 Version: 1.0   
  
	* 우측 Runtimes - Apache Tomcat v9.0 체크   
<br>

4. 서버 생성 시 Overview 설정(포트번호)   
	* Server Options - Serve modules without publishing 체크   
	* Port HTTP/1.1 Number: 8282   
<br>

5. 서버 생성 시 Modules 설정(contextPath)   
	* Modules - Edit - /feswork   
	* (다이나믹 웹 프로젝트 생성 시 설정을 feswork로 해두어서 이미 되어있을 가능성이 높지만 체크한번해주세요.)   

<br>

---

<br><br>

# 협업용 SOURCETREE 사용 순서 <span style=color:red>(* 중요 *)</span>

<br>

### ■ 초기환경세팅 시

<br>

1. Clone
	* 소스경로
		* https://github.com/FESWORK-PROJECT/main.git

	* 목적지경로

		* C:/workspace/Project_FESWORK (빈폴더로 생성하시면됨)

<br>


2. Local Branch Checkout
	* 원격-origin-본인이름브랜치 더블클릭-확인클릭
	* 브랜치에 Project_FESWORK (main) 브랜치와 본인이름브랜치 2개 생성되어있다면 완료

<br>

### ■ 작업 진행 전

<br>

1. Main Branch(Project_FESWORK) Checkout
	* [브랜치]-[Project_FESWORK] 더블클릭(왼쪽에 동그란원 생김)

<br>

2. 패치(fetch)
	* [Project_FESWORK 브랜치] 체크아웃 되어있는지 확인 후
	* [패치] 클릭-확인클릭

<br>

3. Pull
	* [Project_FESWORK 브랜치] 체크아웃 되어있는지 확인 후
	* [Pull] 클릭-확인클릭

<br>

4. 개인용 Branch Checkout
	* [브랜치]-[개인이름 브랜치] 더블클릭(왼쪽에 동그란원 생김)
	* [Project_FESWORK 브랜치] 우클릭
	* [현재브랜치로 Project_FESWORK 병합] 클릭

<br>

### ■ 작업 후

<br>

1. staging(add작업) 
	* 좌측상단 [동그란 커밋] 클릭
	* 하단 [모두 스테이지에 올리기] 클릭

<br>

2. 커밋(commit작업)
	* 우측 변경사항 확인 후
	* 하단 커밋메시지 간결하게 작성, 아래 커밋메시지 규칙 읽어보길 권장

		* 참조: https://velog.io/@chojs28/Git-%EC%BB%A4%EB%B0%8B-%EB%A9%94%EC%8B%9C%EC%A7%80-%EA%B7%9C%EC%B9%99

	* 우측하단 [네모난 커밋] 클릭

<br>

3. Push
	* Push 클릭
	* <span style=color:red><b>(* 중요 *)</b> 반드시 본인 명의 브랜치만 선택</span>(다른사람 명의 브랜치나, Project_FESWORK 선택 시 재앙발생)
	* 확인 클릭
	* 깃허브 사이트 접속하여 본인의 개인용 원격브랜치에 작업사항들이 저장되었는지 확인

<br>

4. 병합 요청(Pull-Request)
	* 깃허브-우측상단 메뉴-Your organizations-[FESWORK-PROJECT]-main-[Pull-Request]-[New pull request]
	* base:main  <- compare:개인용브랜치
	* [Create pull request]
	* 디스크립션에 어떤 작업 진행했는지 상세하게 기입
	* [Create pull request] 리퀘스트했다고 카톡에 공유
	* 작업내용 리뷰 후 approve
	* main 브랜치에 merge(병합) 진행   

	※ 참고) 병합 요청은 매번할 필요까진 없음
	

