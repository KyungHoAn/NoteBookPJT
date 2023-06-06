<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>

<!-- ======= Header ======= -->
<header id="header" class="header fixed-top" data-scrollto-offset="0">
    <div class="container-fluid d-flex align-items-center justify-content-between">

        <a onclick="location.href='/home'" class="logo d-flex align-items-center scrollto me-auto me-lg-0">
            <img src="../img/logo/logo1.jpeg" style="width: 70px; height: 70px;">
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

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
        <div class="container">

            <div class="section-header">
                <h2>캠퍼스 맵</h2>
            </div>

        </div>
        <div>
            <div id="mapReSearch">
                <div id="map" style="float: left; width:800px;height:500px; margin-left: 30px; display: flex;line-height: 0; margin: 0 auto;"></div>
            </div>
            <%--        <input type="text" style="float: right;">--%>

            <div style="flaot: right; justify-content: center;">
                <div style="margin-left: 15cm; margin-bottom : 20px;">
                    검색할 장소 입력  :
                    <input type="text" id="searchMap">
                    <button class="button is-primary is-light" type="button" id="searchMapBtn">검색</button>
                </div>
            </div>

        </div>


        <br>
        <div style="margin: 0 auto; justify-content: center;align-items : center;">
            <div style="margin-left: 12cm; margin-bottom : 20px;">
                <div id="clickLatlng"></div>
            </div>
        </div>
        <br>
        <br><br><br>

    </section><!-- End Contact Section -->

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
                <a href="https://github.com/KyungHoAn/NoteBookPJT" class="github">GIT</a>
            </div>

        </div>
    </div>

</footer><!-- End Footer -->

<a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<div id="preloader"></div>
