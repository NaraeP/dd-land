<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>

<style>
	#title+p {
		text-shadow: 0 2px 10px rgba(255, 255, 255, 0.8);
		padding: 5px 20px;
		color: #222222;
		font-size: 17px;
		background-color: rgba(255, 255, 255, 0.6);
		display: inline-block;
		border-radius: 50px;
	}
	
	#pagetitle {
		margin-top: 70px;
	}
	#title {
	  margin-bottom: 20px;
	}
	
	.munti-content-container {
	  display: flex;
	  flex-wrap: wrap;
	  margin: 30px 50px 0 50px;
	  padding: 0 !important;
	}
	
	.item {
	  position: relative;
	  width:1200px; 
	  height:300px;
	  aspect-ratio: 0.75;
	  padding: 0;
	  box-sizing: border-box;
	  min-width: 270px;
	  border: 1px solid #E1E1E1;
	  margin: 10px 45px 50px 45px;
	  border-radius: 10px;
	  /* transition: all 0.3s; */
	   box-shadow: 12px 12px 17px rgba(0, 0, 0, 0.20);
	}
	
	.item>div:nth-child(1) {
	  height: 70%;
	  background-color: transparent;
	  background-size: cover;
	  background-position: center;
	  background-repeat: no-repeat;
	  border-radius: 10px 10px 0 0;
	}
	
	.item>div:nth-child(2) {
	  height: 30%;
	  display: flex;
	  flex-direction: column;
	  padding: 20px;
	  font-size: 1.3rem;
	  font-weight: bold;
	  background: transparent;
	  border-radius: 0 0 10px 10px;
	}
	.hidden-div {
	      display: block;
	      color: white;
	      position: absolute;
	      top: 0;
	      left: 0;
	      width: 100%;
	      height: 70%;
	      padding: 20px;
	      background-color: black;
	      /* opacity: 0.65; /* 투명도 조절 */ */
	      border-radius: 10px 10px 0 0;
	      z-index: 1; /* 다른 요소들보다 위에 위치하도록 설정 */
	}
	.stats-counter {
       background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("/dd/resources/files/guide/location.jpg") center center;
       background-size: cover;
       background-attachment: fixed;
    }
</style>
    <!-- ======= Stats Counter Section ======= -->
    <section id="stats-counter" class="stats-counter">
      <div id="pagetitle" class="container" data-aos="zoom-out">
        <div class="gy-4" style="justify-content: center; width: 100%;">

          <div class="col-lg-3 col-md-6" style="width: 100%;">
            <div class="stats-item text-center w-100 h-100">
              <div id="title" style="font-size: 48px;
              display: block;
              color: #fff;
              font-weight: 700;">오시는 길</div>
              <p style="font-size:20px;">친구들! 어서 오세요 <i class="fa-regular fa-face-laugh-squint" style="color: #000;"></i></p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Stats Counter Section -->

    <!-- ======= Menu Section ======= -->
    <section id="menu" class="menu">
      <div class="container" data-aos="fade-up">

        <div class="tab-content" data-aos-delay="900">

          <div class="tab-pane fade active show" id="menu-starters">

			<div>지도 부분</div>

            <div class="munti-content-container">
              <div class="item">
                <div style="background-image: url('/dd/resources/files/guide/location/plane.jpg');"></div>
                <div>비행기 이용시
                <ul>
                    <li>
                        <p>인천 국제공항 <i class="fas fa-arrow-right"></i> 제주 공항</p>
                    </li>
                    <li>
                        <p>김포 공항 <i class="fas fa-arrow-right"></i> 제주 공항</p>
                    </li>
                </ul>
                
                </div>
               <!--  <div class="hidden-div" style="color:black;">설명쓰기</div> -->
              </div>
              <div class="item">
                <div style="background-image: url('/dd/resources/files/guide/location/plane.jpg');"></div>
                <div>배 이용시</div>
               <!--  <div class="hidden-div" style="color:black;">설명쓰기</div> -->
              </div>
            </div>
        </div><!-- End Starter Menu Content -->
      </div>
     </div>
    </section><!-- End Menu Section -->
    
    <script>
    var itemElements = document.querySelectorAll('.item');
    itemElements.forEach(function(item) {
        item.addEventListener('mouseover', function() {
          // 마우스 오버 시 hidden-div를 보이게 변경
          item.querySelector('.hidden-div').style.display = 'block';
        });

        item.addEventListener('mouseout', function() {
          // 마우스 아웃 시 hidden-div를 다시 숨김
            item.querySelector('.hidden-div').style.display = 'none';
        });
    });

  </script>

<!-- 끝 -->