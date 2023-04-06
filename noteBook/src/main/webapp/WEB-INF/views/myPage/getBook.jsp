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
        </nav><!-- .navbar -->

        <a class="btn-getstarted scrollto" href="">로그아웃</a>

    </div>
</header><!-- End Header -->

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>책 세부정보</h2>
                <ol>
                    <li><a onclick="location.href='/'">Home</a></li>
                    <li>책 세부정보</li>
                </ol>
            </div>

        </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
        <div class="container" data-aos="fade-up">

            <div class="row gy-4">

                <div class="col-lg-6" style="margin:0 auto">
                    <div class="portfolio-details-slider swiper">
                        <div class="swiper-wrapper align-items-center">

                            <div class="swiper-slide">
                                <img src="https://gimg.gilbut.co.kr/book/BN003654/rn_view_BN003654.jpg" alt="" style="width: 400px;">
                            </div>

                            <div class="swiper-slide">
                                <img src="assets/img/portfolio/product-1.jpg" alt="">
                            </div>

                            <div class="swiper-slide">
                                <img src="assets/img/portfolio/branding-1.jpg" alt="">
                            </div>

                            <div class="swiper-slide">
                                <img src="assets/img/portfolio/books-1.jpg" alt="">
                            </div>

                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="portfolio-info">
                        <h3>시나공 정보처리기사<button type="button" id="deleteBook" class="btn btn-outline-secondary" style="float: right;" onClick="location.href='myPage.html'">책 삭제</button></h3>
                        <ul>
                            <li><strong>Category</strong>: BOOK</li>
                            <li><strong>책</strong>: 시나공 정보처리기사 실기</li>
                            <li><strong>저자</strong>: 김철수</li>
                            <li><strong>출판사</strong>: 00출판사</li>
                            <li><strong>가격</strong>: 2000원<button type="button" class="btn btn-outline-secondary" style="margin-left:10px;">가격수정</button></li>
                            <li><strong>판매자</strong>: 홍길동</li>
                        </ul>
                    </div>
                    <div class="portfolio-description">
                        <h2>책의 상세 내용 <button type="button" class="btn btn-outline-secondary" style="margin-left:10px;">내용수정</button></h2>
                        <p>
                            12pg 노트필기한거 말고는 깨끗한 책입니다.!!
                        </p>
                    </div>
                </div>
            </div>

            <div>
                <!-- 게시글 작성-->
                <article class="media" style="margin-bottom:30px">
                    <figure class="media-left">
                        <p class="image is-64x64">
                            <img src="https://bulma.io/images/placeholders/128x128.png">
                        </p>
                    </figure>
                    <div class="media-content">
                        <div class="field">
                            <p class="control">
                                <textarea class="textarea" placeholder="Add a comment..."></textarea>
                            </p>
                        </div>
                        <nav class="level">
                            <div class="level-left">
                                <div class="level-item">
                                    <a class="button is-info">Submit</a>
                                </div>
                            </div>
                        </nav>
                    </div>
                </article>

                <!-- 게시글 -->
                <div class="comments">
                    <div class="media">
                        <figure class="media-left">
                            <p class="image is-64x64">
                                <img src="https://bulma.io/images/placeholders/128x128.png">
                            </p>
                        </figure>

                        <div class="media-content">
                            <div class="content">
                                <p>
                                    <strong>홍길동</strong> <small>@wonkang</small> <small>31m</small>
                                    <br>
                                    책을 사고 싶습니다!
                                </p>
                            </div>

                            <nav class="level is-mobile">
                                <div class="level-left">
                                    <a class="level-item">
                                        <span class="icon is-small"><i class="fas fa-reply"></i></span>
                                    </a>
                                    <a class="level-item">
                                        <span class="icon is-small"><i class="fas fa-retweet"></i></span>
                                    </a>
                                    <a class="level-item">
                                        <span class="icon is-small"><i class="fas fa-heart"></i></span>
                                    </a>
                                </div>
                            </nav>
                        </div>

                        <div class="media-right">
                            <button class="delete"></button>
                        </div>
                    </div>
                    <div class="media">
                        <figure class="media-left">
                            <p class="image is-64x64">
                                <img src="https://bulma.io/images/placeholders/128x128.png">
                            </p>
                        </figure>

                        <div class="media-content">
                            <div class="content">
                                <p>
                                    <strong>홍길순</strong> <small>@wonkang</small> <small>31m</small>
                                    <br>
                                    책을 사고 싶습니다!
                                </p>
                            </div>

                            <nav class="level is-mobile">
                                <div class="level-left">
                                    <a class="level-item">
                                        <span class="icon is-small"><i class="fas fa-reply"></i></span>
                                    </a>
                                    <a class="level-item">
                                        <span class="icon is-small"><i class="fas fa-retweet"></i></span>
                                    </a>
                                    <a class="level-item">
                                        <span class="icon is-small"><i class="fas fa-heart"></i></span>
                                    </a>
                                </div>
                            </nav>
                        </div>

                        <div class="media-right">
                            <button class="delete"></button>
                        </div>
                    </div>
                </div><!--End 커뮤니티 comments-->


            </div>
        </div>
    </section><!-- End Portfolio Details Section -->

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
