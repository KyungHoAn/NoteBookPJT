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
        </nav><!-- .navbar -->

        <a class="btn-getstarted scrollto" href="">로그아웃</a>

    </div>
</header><!-- End Header -->

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>커뮤니티 상세</h2>
                <ol>
                    <li><a onclick="location.href='/'">Home</a></li>
                    <li><a onclick="location.href='/community'">커뮤니티</a></li>
                    <li>커뮤니티 상세</li>
                </ol>
            </div>

        </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Blog Details Section ======= -->
    <section id="blog" class="blog">
        <div class="container" data-aos="fade-up">
            <div class="row g-5">
                <div>
                    <article class="blog-details" style="margin-bottom: 50px;">
                        <h2 class="title">제목</h2>
                        <div style="margin-top: 10px;">
                            <input class="input is-rounded" type="text" placeholder="제목 입력">
                        </div>

                        <h3 class="title">내용</h3>

                        <div class="content">
                            <textarea rows="5" cols="145"></textarea>
                        </div><!-- End post content -->

                        <div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
                            <input type="checkbox" class="btn-check" id="btncheck1" autocomplete="off">
                            <label class="btn btn-outline-success" for="btncheck1">책</label>

                            <input type="checkbox" class="btn-check" id="btncheck2" autocomplete="off">
                            <label class="btn btn-outline-success" for="btncheck2">스터디</label>

                            <input type="checkbox" class="btn-check" id="btncheck3" autocomplete="off">
                            <label class="btn btn-outline-success" for="btncheck3">칭찬방</label>

                            <input type="checkbox" class="btn-check" id="btncheck4" autocomplete="off">
                            <label class="btn btn-outline-success" for="btncheck4">비난방</label>

                            <input type="checkbox" class="btn-check" id="btncheck5" autocomplete="off">
                            <label class="btn btn-outline-success" for="btncheck5">지도</label>

                            <input type="checkbox" class="btn-check" id="btncheck6" autocomplete="off">
                            <label class="btn btn-outline-success" for="btncheck6">공구</label>
                        </div>

                        <div style="margin-top: 40px;">
                            <button type="button" class="btn btn-outline-secondary btn-lg" onClick="location.href='blog.html'">커뮤니티 올리기</button>
                        </div>

                    </article><!-- End blog post -->
                </div>
            </div>

        </div>
    </section><!-- End Blog Details Section -->

</main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer" class="footer" style="padding: 0rem 0rem 0rem; position: absolute; left:0; right: 0;">

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

</footer><!-- End Footer -->

<a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<div id="preloader"></div>
