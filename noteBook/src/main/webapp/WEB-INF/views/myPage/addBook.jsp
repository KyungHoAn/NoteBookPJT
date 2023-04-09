<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<!-- ======= Header ======= -->
<header id="header" class="header fixed-top" data-scrollto-offset="0">
  <div class="container-fluid d-flex align-items-center justify-content-between">

    <a onclick="location.href='/'" class="logo d-flex align-items-center scrollto me-auto me-lg-0">
      <h1>공책<span>.</span></h1>
    </a>

    <nav id="navbar" class="navbar">
      <ul>
        <li><a onclick="location.href='/'"><span>Home</span></a></li>
        <li><a onclick="location.href='/communityView'">커뮤니티</a></li>
        <li><a onclick="location.href='/mapView'">캠퍼스 맵</a></li>
        <li><a onclick="location.href='/myPageView'">myPage</a></li>
      </ul>
      <i class="bi bi-list mobile-nav-toggle d-none"></i>
    </nav><!-- .navbar -->

    <a class="btn-getstarted scrollto">로그아웃</a>

  </div>
</header><!-- End Header -->

<main id="main">

  <!-- ======= Breadcrumbs ======= -->
  <div class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h2>책 등록</h2>
        <ol>
          <li><a onclick="location.href='/'">Home</a></li>
          <li>책 등록</li>
        </ol>
      </div>

    </div>
  </div><!-- End Breadcrumbs -->

  <!-- ======= Services Section ======= -->
  <section id="services" class="services">
    <div class="container" data-aos="fade-up">

      <div class="section-header">
        <h2>등록할 책 정보</h2>
        <div>
          <input class="input is-normal" id="isbn" name="isbn" type="text" style="width: 15cm" placeholder="ISBN 입력">
          <button type="button" id="searchBtn" class="btn btn-outline-secondary">책 검색하기</button></div>
      </div>

      <!-- ======= Book Section ======= -->
      <div style="margin-left: 150px; display:none" id="detail_book">
        <section id="about" class="about">
          <div class="container" data-aos="fade-up">

            <div class="row g-4 g-lg-5" data-aos="fade-up" data-aos-delay="200">

              <div class="col-lg-4">
                <div class="about-img">
                  <img src="https://gimg.gilbut.co.kr/book/BN003654/rn_view_BN003654.jpg" class="img-fluid" alt="" style="width:200px; height:250px;">
                </div>
              </div>

              <div class="col-lg-7">
                <h3 class="pt-0 pt-lg-5">책 정보</h3>

                <!-- Tab Content -->
                <div class="tab-content">

                  <div class="tab-pane fade show active" id="tab1">
                    <div>
                      <li><strong>책 제목</strong>: 시나공 정보처리기사 실기</li>
                      <li><strong>저자</strong>: 김정준, 강윤석, 김용값, 김우경</li>
                      <li><strong>출판사</strong>: 길벗안앤디</li>
                      <li><strong>책 가격</strong>: 35,000</li>
                      <li><strong>판매 가격</strong>: <input type="text" style="height: 20px;"> </li>
                      <li><strong>판매 책 정보</strong>:</li>
                      <textarea rows="4" cols="70"></textarea>
                    </div>
                  </div><!-- End Tab 1 Content -->
                </div>
                <div style="margin-top: 50px;">
                  <button type="button" class="btn btn-outline-secondary btn-lg" onClick="location.href='myPage.html'">책정보 저장하기</button>
                </div>
              </div>
            </div>
          </div>
        </section><!-- End About Section -->
      </div>
    </div>
  </section><!-- End Services Section -->

</main><!-- End #main -->

<!-- ======= Footer ======= -->
<!-- <footer id="footer" class="footer" style="padding: 0rem 0rem 0rem; position: auto; bottom: 0px; left:0; right: 0;">

<div class="footer-legal text-center">
<div class="container d-flex flex-column flex-lg-row justify-content-center justify-content-lg-between align-items-center">

<div class="d-flex flex-column align-items-center align-items-lg-start">
<div class="copyright">
&copy; Copyright <strong><span>HeroBiz</span></strong>. All Rights Reserved
</div>
<div class="credits">
Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
</div>
</div>

<div class="social-links order-first order-lg-last mb-3 mb-lg-0">
<a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
<a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
<a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
<a href="#" class="google-plus"><i class="bi bi-skype"></i></a>
<a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
</div>

</div>
</div>

</footer> -->
<!-- End Footer -->
<a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<div id="preloader"></div>
