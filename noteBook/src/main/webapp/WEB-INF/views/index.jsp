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
        <li><a onclick="location.href='/community'">커뮤니티</a></li>
        <li><a onclick="location.href='/map'">캠퍼스 맵</a></li>
        <li><a onclick="location.href='/myPage'">myPage</a></li>
      </ul>
      <i class="bi bi-list mobile-nav-toggle d-none"></i>
    </nav>

    <a class="btn-getstarted scrollto" onclick="location.href='/login'">로그인</a>

  </div>
</header><!-- End Header -->

<section id="hero-static" class="hero-static d-flex align-items-center">
  <div class="container d-flex flex-column justify-content-center align-items-center text-center position-relative" data-aos="zoom-out">
    <h2><span>공책</span>에 오신것을 환영합니다.</h2>
    <p>공책은 전공책 거래 커뮤니티 플랫폼 입니다.</p>
    <div class="d-flex">
      <!-- <a href="#about" class="btn-get-started scrollto">Get Started</a> -->
    </div>
  </div>
</section>

<main id="main">

  <!-- ======= Services Section ======= -->
  <section id="services" class="services">
    <div class="container" data-aos="fade-up">

      <div class="section-header">
        <h2>책 찾아보기</h2>
      </div>

      <div class="section-header">
        <input class="input is-normal" type="text" style="width: 15cm" placeholder="책 검색">
      </div>

      <div class="row gy-5">

        <div class="col-xl-4 col-md-6" data-aos="zoom-in" data-aos-delay="200">
          <div class="service-item">
            <div class="img" style="margin-left: 60px;">
              <img src="https://gimg.gilbut.co.kr/book/BN003654/rn_view_BN003654.jpg" class="img-fluid" alt="" style="width: 300px;">
            </div>
            <div class="details position-relative">
              <div class="icon">
                <i class="bi bi-activity"></i>
              </div>
              <a onclick="location.href='/getBook'" class="stretched-link">
                <h3>정보처리 기사</h3>
              </a>
              <p>원광대학교</p>
            </div>
          </div>
        </div><!-- End Service Item -->

        <div class="col-xl-4 col-md-6" data-aos="zoom-in" data-aos-delay="300">
          <div class="service-item">
            <div class="img">
              <img src="https://gimg.gilbut.co.kr/book/BN003654/rn_view_BN003654.jpg" class="img-fluid" alt="" style="width: 300px;">
            </div>
            <div class="details position-relative">
              <div class="icon">
                <i class="bi bi-broadcast"></i>
              </div>
              <a href="book_details.html" class="stretched-link">
                <h3>Eosle Commodi</h3>
              </a>
              <p>Ut autem aut autem non a. Sint sint sit facilis nam iusto sint. Libero corrupti neque eum hic non ut nesciunt dolorem.</p>
            </div>
          </div>
        </div><!-- End Service Item -->

        <div class="col-xl-4 col-md-6" data-aos="zoom-in" data-aos-delay="400">
          <div class="service-item">
            <div class="img">
              <img src="https://gimg.gilbut.co.kr/book/BN003654/rn_view_BN003654.jpg" class="img-fluid" alt="" style="width: 300px;">
            </div>
            <div class="details position-relative">
              <div class="icon">
                <i class="bi bi-easel"></i>
              </div>
              <a href="book_details.html" class="stretched-link">
                <h3>Ledo Markt</h3>
              </a>
              <p>Ut excepturi voluptatem nisi sed. Quidem fuga consequatur. Minus ea aut. Vel qui id voluptas adipisci eos earum corrupti.</p>
            </div>
          </div>
        </div><!-- End Service Item -->

        <div class="col-xl-4 col-md-6" data-aos="zoom-in" data-aos-delay="500">
          <div class="service-item">
            <div class="img">
              <img src="https://gimg.gilbut.co.kr/book/BN003654/rn_view_BN003654.jpg" class="img-fluid" alt="" style="width: 300px;">
            </div>
            <div class="details position-relative">
              <div class="icon">
                <i class="bi bi-bounding-box-circles"></i>
              </div>
              <a href="#" class="stretched-link">
                <h3>Asperiores Commodit</h3>
              </a>
              <p>Non et temporibus minus omnis sed dolor esse consequatur. Cupiditate sed error ea fuga sit provident adipisci neque.</p>
              <a href="#" class="stretched-link"></a>
            </div>
          </div>
        </div><!-- End Service Item -->

        <div class="col-xl-4 col-md-6" data-aos="zoom-in" data-aos-delay="600">
          <div class="service-item">
            <div class="img">
              <img src="https://gimg.gilbut.co.kr/book/BN003654/rn_view_BN003654.jpg" class="img-fluid" alt="" style="width: 300px;">
            </div>
            <div class="details position-relative">
              <div class="icon">
                <i class="bi bi-calendar4-week"></i>
              </div>
              <a href="#" class="stretched-link">
                <h3>Velit Doloremque</h3>
              </a>
              <p>Cumque et suscipit saepe. Est maiores autem enim facilis ut aut ipsam corporis aut. Sed animi at autem alias eius labore.</p>
              <a href="#" class="stretched-link"></a>
            </div>
          </div>
        </div><!-- End Service Item -->

        <div class="col-xl-4 col-md-6" data-aos="zoom-in" data-aos-delay="700">
          <div class="service-item">
            <div class="img">
              <img src="https://gimg.gilbut.co.kr/book/BN003654/rn_view_BN003654.jpg" class="img-fluid" alt="" style="width: 300px;">
            </div>
            <div class="details position-relative">
              <div class="icon">
                <i class="bi bi-chat-square-text"></i>
              </div>
              <a href="#" class="stretched-link">
                <h3>Dolori Architecto</h3>
              </a>
              <p>Hic molestias ea quibusdam eos. Fugiat enim doloremque aut neque non et debitis iure. Corrupti recusandae ducimus enim.</p>
              <a href="#" class="stretched-link"></a>
            </div>
          </div>
        </div><!-- End Service Item -->

      </div>
    </div>
  </section><!-- End Services Section -->

</main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer" class="footer" style="padding: 0rem 0rem 0rem; position: absolute; left:0; right: 0;">

  <div class="footer-legal text-center">
    <div class="container d-flex flex-column flex-lg-row justify-content-center justify-content-lg-between align-items-center">

      <div class="d-flex flex-column align-items-center align-items-lg-start">
        <div class="copyright">
          &copy; Copyright <strong><span>공책</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
          Designed by <a href="#">Team. Spring</a>
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

</footer><!-- End Footer -->

<a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<div id="preloader"></div>
