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
        <li><a onclick="location.href='/mapView'">캠퍼스 맵</a></li>
        <li><a onclick="location.href='/myPageView'">myPage</a></li>
      </ul>
      <i class="bi bi-list mobile-nav-toggle d-none"></i>
    </nav>
    <c:choose>
      <c:when test="${empty sessUserInfo.userId}">
        <a class="btn-getstarted scrollto" onclick="location.href='/auth/login'">로그인</a>
      </c:when>
      <c:otherwise>
        <a class="btn-getstarted scrollto" onclick="location.href='/auth/logout-proc'">로그아웃</a>
      </c:otherwise>
    </c:choose>

  </div>
</header><!-- End Header -->
<section id="hero-static" class="hero-static d-flex align-items-center">
  <div class="container d-flex flex-column justify-content-center align-items-center text-center position-relative" data-aos="zoom-out">
    <h2>
      <c:choose>
        <c:when test="${not empty sessUserInfo.userId}">
          ${sessUserInfo.userId} 님
        </c:when>
      </c:choose>
        <span>공책</span>에 오신것을 환영합니다.</h2>
    <p>공책은 전공책 거래 커뮤니티 플랫폼 입니다.</p>
    <div class="d-flex">
    </div>
  </div>
</section>

<main id="main">

  <!-- ======= Services Section ======= -->
  <section id="services" class="services">
    <div class="container" data-aos="fade-up">
      <c:choose>
        <c:when test="${empty sessUserInfo.userId}">
          <div class="section-header"><h2>최근 올라온 책</h2></div>
        </c:when>
        <c:otherwise>
          <div class="section-header"><h2>책 찾아보기</h2></div>
        </c:otherwise>
      </c:choose>

      <c:choose>
        <c:when test="${not empty sessUserInfo.userId}">
          <div class="section-header">
            <input class="input is-normal" type="text" id="searchBook" style="width: 15cm" placeholder="책 검색">
          </div>
        </c:when>
      </c:choose>

      <div class="row gy-5" id="bookList">
        <c:forEach var="var" items="${list}" varStatus="status">
          <div class="col-xl-4 col-md-6" data-aos="zoom-in" data-aos-delay="200">
            <div class="service-item">
              <div class="img" style="margin-left: 70px;">
                <img src="${var.BOOK_IMG}" class="img-fluid" alt="" style="width: 280px;">
              </div>
              <div class="details position-relative">
                <div class="icon">
                  <i class="bi bi-activity"></i>
                </div>
                <a onclick="location.href='/book/getBook?bookIdx='+${var.BOOK_IDX}" class="stretched-link">
                  <h3>${var.BOOK_TITLE}</h3>
                </a>
                <p>판매자: ${var.USER_NAME}</p>
              </div>
            </div>
          </div>
        </c:forEach>
      </div>
    </div>
  </section><!-- End Services Section -->
  <c:choose>
    <c:when test="${empty sessUserInfo.userId}">
    </c:when>
    <c:otherwise>
      <section id="blog" class="blog">
        <div class="blog-pagination" id="pageList">
        </div>
      </section>
    </c:otherwise>
  </c:choose>
</main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer" class="footer" style="padding: 0rem 0rem 0rem; position: absolute; left:0; right: 0;">

  <div class="footer-legal text-center">
    <div class="container d-flex flex-column flex-lg-row justify-content-center justify-content-lg-between align-items-center">

      <div class="d-flex flex-column align-items-center align-items-lg-start">
        <div class="copyright">
          <strong><span>공책</span></strong>.
        </div>
        <div class="credits">
          Designed by <a href="#">Team. Spring</a>
        </div>
      </div>

    </div>
  </div>

</footer><!-- End Footer -->

<a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<div id="preloader"></div>
