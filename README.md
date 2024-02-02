# [Spring Project(2023)] 놀이공원 웹사이트
끝이 없는 즐거움, DD Land에 오신 것을 환영합니다!🎡 지금 바로 DD Land 입장권을 구매해보러 가볼까요?😊

## 🔖 목차
- [📄 프로젝트 개요](#프로젝트-개요)
- [✒️ 기획 배경](#%EF%B8%8F기획-배경)
- [📌 구현 목표](#구현-목표)
- [👨‍👩‍👧‍👦 업무 분담](#업무-분담)
- [💻 주요 구현 기능](#주요-구현-기능)
- [📚 산출물](#산출물)

<!-- 링크 ver. > readme.md 파일로 이동하기 때문에 잠시 보류
- [📄 프로젝트 개요](https://github.com/NaraeP/dd-land/blob/main/README.md#%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-%EA%B0%9C%EC%9A%94)
- [✒️ 기획 배경](https://github.com/NaraeP/dd-land/blob/main/README.md#%EF%B8%8F-%EA%B8%B0%ED%9A%8D-%EB%B0%B0%EA%B2%BD)
- [📌 구현 목표](https://github.com/NaraeP/dd-land/blob/main/README.md#-%EA%B5%AC%ED%98%84-%EB%AA%A9%ED%91%9C)
- [👨‍👩‍👧‍👦 업무 분담](https://github.com/NaraeP/dd-land/blob/main/README.md#-%EC%97%85%EB%AC%B4-%EB%B6%84%EB%8B%B4)
- [💻 주요 구현 기능](https://github.com/NaraeP/dd-land/blob/main/README.md#-%EC%A3%BC%EC%9A%94-%EA%B5%AC%ED%98%84-%EA%B8%B0%EB%8A%A5)
- [📚 산출물](https://github.com/NaraeP/dd-land/blob/main/README.md#-%EC%82%B0%EC%B6%9C%EB%AC%BC)
-->

### 📄프로젝트 개요
- 프로젝트명: DD Land
- 주제: Spring Framework를 활용하여 제작한 놀이공원(DD Land) 웹사이트입니다.
- 개발 환경
  - Front-End: <img src="https://img.shields.io/badge/HTML5-E34F26?style=flat-square&logo=HTML5&logoColor=white"/> <img src="https://img.shields.io/badge/CSS3-1572B6?style=flat-square&logo=CSS3&logoColor=white"/> <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=JavaScript&logoColor=white"/> <img src="https://img.shields.io/badge/jQuery-0769AD?style=flat-square&logo=jquery&logoColor=white">
  - Back-End: <img src="https://img.shields.io/badge/Apache Tomcat-F8DC75?style=flat-square&logo=apachetomcat&logoColor=black"/> <img src="https://img.shields.io/badge/MyBatis-000000?style=flat-square&logo=mybatis&logoColor=white">
  - Database: <img src="https://img.shields.io/badge/Oracle-F80000?style=flat-square&logo=Oracle&logoColor=white">
  - Framework: <img src="https://img.shields.io/badge/Spring-6DB33F?style=flat-square&logo=Spring&logoColor=white"/> <img src="https://img.shields.io/badge/bootstrap-7952B3?style=flat-square&logo=Bootstrap&logoColor=white"/>
- 사용 기술: Spring MVC Pattern, Spring Security, Ajax, OpenAPI, MyBatis, Elasticsearch, Web Socket, Modal, Restful API, Tiles
- 개발 일정: 2023.12.18 ~ 2023.12.27(10일)
- 벤치마킹: 롯데월드 웹사이트(https://adventure.lotteworld.com/kor/main/index.do)
  <p><img src="https://github.com/smcha16/dd-land/assets/140796673/4783fe35-a148-4888-9fde-3f7261ea7a0f"></p>

### ✒️기획 배경
- **어트랙션 예약**: 방문 당일 희망 시간에 미리 어트랙션을 예약하여 놀이공원 방문객의 편의성 추구
- **놀이기구 및 코스 추천**: 개개인의 성향에 맞게 놀이기구 또는 코스를 추천하여 새로운 즐거움 추구
- **기프트샵 판매 물품 구매**: 별도 놀이공원 방문 없이도 공원 내 기프트샵의 판매 물품을 온라인으로 구매 가능하도록 하여 이용자 편의성 및 접근성 향상
- **Spring MVC Model 및 디자인 패턴 적용**: 효과적인 설계를 위해 디자인 패턴 활용, 계층을 분리하여 유지보수성과 확장성 확보

### 📌구현 목표
 - **사용자 친화적인 디자인 제공**
   - 회원/관리자 페이지 구분하여 별도 분리
   - 반응형 웹을 활용한 모바일 최적화 제공
 - **Web Socket 및 Open API 활용**
   - 사용자들간의 실시간 소통을 위해 Web Socket을 활용하여 채팅 기능 구현
   - Open API를 사용하여 외부 데이터를 통한 다양한 정보 제공
 - **Spring Security를 활용하여 인증 및 권한 부여**
   - Spring Security를 활용하여 회원/관리자별 권한 부여
 - **Elasticsearch 활용**
   - Elasticsearch를 활용하여 검색 기능 구현

### 👨‍👩‍👧‍👦업무 분담
- 김형우: 요금/혜택, 로그인
- 박나래: 액티비티
- 이승원: 추천, 월드컵
- 이정은: 이용가이드, 운휴, 채팅
- 차민재: 샵, 티켓
- 차수민: 커뮤니티
- 황주원: 마이페이지

### 💻주요 구현 기능

### 📚산출물
- 기획서
- 요구분석서
- 순서도
- 데이터베이스 설계(ERD)
- 화면 설계서
- DDL
- DML
- PPT
- 개발문서
- 요약본
