<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<!-- ======= Header ======= -->
<header id="header" class="header fixed-top" data-scrollto-offset="0">
  <div class="container-fluid d-flex align-items-center justify-content-between">

    <a onclick="location.href='/home'" class="logo d-flex align-items-center scrollto me-auto me-lg-0">
      <h1>공책<span>.</span></h1>
    </a>

    <nav id="navbar" class="navbar">
      <ul>
        <li><a onclick="location.href='/home'"><span>Home</span></a></li>
        <li><a onclick="location.href='/community'">커뮤니티</a></li>
        <li><a onclick="location.href='/mapView'">캠퍼스 맵</a></li>
        <li><a onclick="location.href='/myPageView'">myPage</a></li>
      </ul>
      <i class="bi bi-list mobile-nav-toggle d-none"></i>
    </nav><!-- .navbar -->

    <a class="btn-getstarted scrollto" onclick="location.href='/auth/logout-proc'">로그아웃</a>

  </div>
</header><!-- End Header -->

<main id="main">

  <!-- ======= Breadcrumbs ======= -->
  <div class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h2>책 등록</h2>
        <ol>
          <li><a onclick="location.href='/home'">Home</a></li>
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
      <form id="bookDetail">
        <!-- ======= Book Section ======= -->
        <div style="margin-left: 150px; display:none" id="detail_book">
          <section id="about" class="about">
            <div class="container" data-aos="fade-up">

              <div class="row g-4 g-lg-5" data-aos="fade-up" data-aos-delay="200">

                <div class="col-lg-4">
                  <div class="" id="bookImg">

                  </div>
                </div>

                <div class="col-lg-7">
                  <h3 class="pt-0 pt-lg-5">책 정보</h3>

                  <!-- Tab Content -->
                  <div class="tab-content">

                    <div class="tab-pane fade show active" id="tab1">

                    </div><!-- End Tab 1 Content -->

                  </div>
                  <div style="margin-top: 50px;">
                    <button type="button" class="btn btn-outline-secondary btn-lg" id="insertBookBtn">책정보 저장하기</button>
                  </div>
                </div>
              </div>
            </div>
          </section><!-- End About Section -->
        </div>
      </form>

    </div>
  </section><!-- End Services Section -->

</main><!-- End #main -->
<a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<div id="preloader"></div>
