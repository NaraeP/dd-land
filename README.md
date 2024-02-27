# [Spring Project(2023)] 놀이공원 웹사이트
끝이 없는 즐거움, DD Land에 오신 것을 환영합니다!🎡<br>
사용자에게는 놀이공원의 다양한 정보를 제공하고, 웹사이트 관리자에게는 높은 사용성의 관리자 전용 페이지를 제공합니다.<br>
지금 바로 DD Land 입장권을 구매해보러 가볼까요?😊

<br>

## 🔖 목차
- [📄 프로젝트 개요](#프로젝트-개요)
- [✒️ 기획 배경](#%EF%B8%8F기획-배경)
- [📌 구현 목표](#구현-목표)
- [👨‍👩‍👧‍👦 업무 분담](#업무-분담)
- [💻 주요 구현 기능](#주요-구현-기능)
- [📚 산출물](#산출물)

<br>

### 📄프로젝트 개요
- **프로젝트명**: DD Land
- **분류**: Spring Project
- **주제**: Spring Framework를 활용하여 제작한 놀이공원(DD Land) 웹사이트입니다. Servlet/JSP Project로 제작한 웹사이트를 기반으로 기존 대비 향상된 관리자/사용자 인터페이스를 제공합니다.
- **개발 환경**: HTML, CSS, JavaScript, jQuery, JSP, Java, Oracle Database 11g, Spring Tool Suite 3, Bootstrap, SQL Developer, DBeaver, eXERD, Draw.io, Google Drive, Git, GitHub, Sourcetree, AWS(EC2), Apache Tomcat
- **사용 기술**: Spring MVC Pattern, Spring Security, Ajax, OpenAPI, MyBatis, Elasticsearch, Web Socket, Modal, Restful API, Tiles
- **주요 기능**: 액티비티·샵·티켓·할인·커뮤니티·이용 안내 등 조회 기능, 어트랙션 예약 기능, 어트랙션 추천 기능, 티켓 및 기프트샵 상품 구매 기능, 채팅 기능, 관리자 기능
- **담당 업무**: 액티비티(어트랙션, 영화, 페스티벌, 포토존) 사용자/관리자 기능, Elasticsearch 검색 기능, AWS 배포
- **프로젝트 기간**: 2023.12.18 ~ 2023.12.27(10일)
- **벤치마킹**: 롯데월드 웹사이트(https://adventure.lotteworld.com/kor/main/index.do)
  <p><img src="https://github.com/smcha16/dd-land/assets/140796673/4783fe35-a148-4888-9fde-3f7261ea7a0f"></p>

<br>

### ✒️기획 배경
1. `어트랙션 예약`: 방문 당일 희망 시간에 미리 어트랙션을 예약하여 놀이공원 방문객의 편의성 추구
2. `놀이기구 및 코스 추천`: 개개인의 성향에 맞게 놀이기구 또는 코스를 추천하여 새로운 즐거움 추구
3. `기프트샵 판매 물품 구매`: 별도 놀이공원 방문 없이도 공원 내 기프트샵의 판매 물품을 온라인으로 구매 가능하도록 하여 이용자 편의성 및 접근성 향상
4. `Spring MVC Model 및 디자인 패턴 적용`: 효과적인 설계를 위해 디자인 패턴 활용, 계층을 분리하여 유지보수성과 확장성 확보

<br>

### 📌구현 목표
1. `사용자 친화적인 디자인 제공`
   - 회원/관리자 페이지 구분하여 별도 분리
   - 반응형 웹을 활용한 모바일 최적화 제공
2. `Web Socket 및 Open API 활용`
   - 사용자들간의 실시간 소통을 위해 Web Socket을 활용하여 채팅 기능 구현
   - Open API를 사용하여 외부 데이터를 통한 다양한 정보 제공
3. `Spring Security를 활용하여 인증 및 권한 부여`
   - Spring Security를 활용하여 회원/관리자별 권한 부여
4. `Elasticsearch 활용`
   - Elasticsearch를 활용하여 검색 기능 구현

<br>

### 👨‍👩‍👧‍👦업무 분담
- 김형우: 요금/혜택, 로그인
- **박나래**: 액티비티
- 이승원: 추천, 월드컵
- 이정은: 이용가이드, 운휴, 채팅
- 차민재: 샵, 티켓
- 차수민: 커뮤니티
- 황주원: 마이페이지

<br>

### 💻주요 구현 기능
1. 관리자 기능
   - 어트랙션 관리
     <img src="https://github.com/smcha16/dd-land/assets/140796673/fc87f8d9-ccec-4fba-9229-ea762dc47b51" alt="">
   - 어트랙션 추가
     <img src="https://github.com/smcha16/dd-land/assets/140796673/f44abdab-096c-49cb-879a-bad710cb6bf7" alt="">
   - 페스티벌 추가
     <img src="https://github.com/smcha16/dd-land/assets/140796673/b7a5f0c7-6f10-499d-9ec2-5aab11d2ff93" alt="">
2. 회원 기능
   - 어트랙션 예약
     <img src="https://github.com/smcha16/dd-land/assets/140796673/e9074ddb-54aa-4a16-90dd-f174439eebad" alt="">
3. 회원/비회원 기능
   - 어트랙션 목록 조회
     <img src="https://github.com/smcha16/dd-land/assets/140796673/4c56d3b8-145c-49a4-9bed-fbb9230d7cda" alt="">
     <img src="https://github.com/smcha16/dd-land/assets/140796673/ff6bf623-09d1-4884-8abf-8bf8b75c547c" alt="">
   - 어트랙션 상세 조회
     <img src="https://github.com/smcha16/dd-land/assets/140796673/6c3a5b38-c25a-4cfc-826f-a7198c472dff" alt="">
     <img src="https://github.com/smcha16/dd-land/assets/140796673/1f1b2cf2-7522-45c9-a98d-a9eb05d34808" alt="">
     <img src="https://github.com/smcha16/dd-land/assets/140796673/40ec4843-4869-4b8d-b22e-6b2f7c1d83da" alt="">
   - 어트랙션 예약 제어
     <img src="https://github.com/smcha16/dd-land/assets/140796673/2db569b9-bcf5-4699-b909-6947b816c0bf" alt="">
   - 영화 목록 조회
     <img src="https://github.com/smcha16/dd-land/assets/140796673/2819b34a-2361-4c40-8b2c-42678f4ac46e" alt="">
   - 영화 상세 조회
     <img src="https://github.com/smcha16/dd-land/assets/140796673/a5c63398-1f01-4951-9697-256439b25843" alt="">
   - 페스티벌 목록 조회
     <img src="https://github.com/smcha16/dd-land/assets/140796673/decd54bf-5bb6-4d28-a418-07d0c0f77656" alt="">
   - 포토존 목록 조회
     <img src="https://github.com/smcha16/dd-land/assets/140796673/211d6ba1-506b-4678-9ed2-5746dbb237c2" alt="">

<br>

### 📚산출물
- 기획서
- 요구분석서 (48장)
- 순서도
- 데이터베이스 설계(ERD)
- 화면 설계서 (133장)
- 테이블 정의서(DDL) (71장)
- 데이터 정의서(DML) (182장)
- PPT
- 개발문서
- 요약본

<details>
    <summary>산출물 미리보기 📷</summary>
        <div markdown="1">
            <img src="https://github.com/smcha16/dd-land/assets/140796673/963d71c4-63d9-443f-9337-345d9f3046a2" alt="기획서">
            <img src="https://github.com/smcha16/dd-land/assets/140796673/0b92d0bd-68f4-462e-a288-40112b8929eb" alt="요구분석서">
            <img src="https://github.com/smcha16/dd-land/assets/140796673/ef32643e-6abd-48de-b686-4b364395f25b" alt="순서도">
            <img src="https://github.com/smcha16/dd-land/assets/140796673/5e8eabd2-14d4-43bd-bbfc-b833bd9b9fbf" alt="데이터베이스 설계(ERD)">
            <img src="https://github.com/smcha16/dd-land/assets/140796673/c2ed6c67-8d0d-47ef-bfe8-496222df9f42" alt="화면설계서">
            <img src="https://github.com/smcha16/dd-land/assets/140796673/90f3ece6-cc27-4444-8ff8-9152a7f3d496" alt="테이블 정의서(DDL)">
            <img src="https://github.com/smcha16/dd-land/assets/140796673/2a06c9bb-b4ac-412a-9fe4-c98ee493fe18" alt="데이터 정의서(DML)">
            <!-- <img src="" alt="요약본"> -->
        </div>
</details>
