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

        <a class="btn-getstarted scrollto" onclick="location.href='/auth/logout-proc'">로그아웃</a>

    </div>
</header><!-- End Header -->

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>MyPage</h2>
                <ol>
                    <li><a onclick="location.href='/'">Home</a></li>
                    <li>MyPage</li>
                </ol>
            </div>

        </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
        <div class="container" data-aos="fade-up">

            <div class="row g-4 g-lg-5" data-aos="fade-up" data-aos-delay="200">

                <div class="col-lg-4">
                    <div class="">
                        <img src="" class="img-fluid" alt="" style="width:200px; height:250px;">
                    </div>
                </div>

                <div class="col-lg-7">
                    <h3 class="pt-0 pt-lg-5">내 정보</h3>

                    <!-- Tab Content -->
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="tab1">
                            <li><strong>닉네임</strong>: ${userName}</li>
                            <li><strong>학교</strong>: ${univ}</li>
                            <li><strong>이메일</strong>: ${userId}</li>
                            <li><a href="#"><strong>비밀번호 변경</strong></a></li>
                        </div><!-- End Tab 1 Content -->
                    </div>
                </div>
            </div>
        </div>
    </section><!-- End About Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
        <div class="container" data-aos="fade-up">

            <div class="section-header">
                <h2>등록한 책 정보</h2>
                <button type="button" class="btn btn-outline-secondary" onclick="location.href='/book/addBook'">책 등록하기</button>
            </div>

            <div class="row gy-5">
                <c:forEach var="var" items="${list.list}" varStatus="status">
                    <div class="col-xl-3 col-md-6" data-aos="zoom-in" data-aos-delay="200">
                        <div class="service-item">
                            <div class="img" style="margin-left: 60px;">
                                <img src="${var.BOOK_IMG}" class="img-fluid" alt="" style="width: 200px;">
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
                    </div><!-- End Service Item -->
                </c:forEach>
            </div>

        </div>
    </section><!-- End Services Section -->

    <!-- ======= Services Section ======= -->
    <section class="services">
        <div class="container" data-aos="fade-up">

            <div class="section-header">
                <h2>찜한 책 정보</h2>
            </div>

            <div class="row gy-5">

                <div class="col-xl-3 col-md-6" data-aos="zoom-in" data-aos-delay="200">
                    <div class="service-item">
                        <div class="img">
                            <img src="" class="img-fluid" alt="">
                        </div>
                        <div class="details position-relative">
                            <div class="icon">
                                <i class="bi bi-activity"></i>
                            </div>
                            <a href="#" class="stretched-link">
                                <h3>Nesciunt Mete</h3>
                            </a>
                            <p>Provident nihil minus qui consequatur non omnis maiores. Eos accusantium minus dolores iure perferendis.</p>
                        </div>
                    </div>
                </div><!-- End Service Item -->

                <div class="col-xl-3 col-md-6" data-aos="zoom-in" data-aos-delay="300">
                    <div class="service-item">
                        <div class="img">
                            <img src="" class="img-fluid" alt="">
                        </div>
                        <div class="details position-relative">
                            <div class="icon">
                                <i class="bi bi-broadcast"></i>
                            </div>
                            <a href="#" class="stretched-link">
                                <h3>Eosle Commodi</h3>
                            </a>
                            <p>Ut autem aut autem non a. Sint sint sit facilis nam iusto sint. Libero corrupti neque eum hic non ut nesciunt dolorem.</p>
                        </div>
                    </div>
                </div><!-- End Service Item -->

            </div>

        </div>
    </section><!-- End Services Section -->

    <!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
        <div class="container" data-aos="fade-up">

            <div class="section-header">
                <h2>올린 게시물</h2>
            </div>

            <div class="row g-5">
                <div class="col-lg-8">

                    <div class="row gy-4 posts-list">

                        <div class="col-lg-6">
                            <article class="d-flex flex-column">

                                <!-- <div class="post-img">
                                  <img src="assets/img/blog/blog-1.jpg" alt="" class="img-fluid">
                                </div> -->

                                <h2 class="title">
                                    <a href="">공대 네트워크 전공책 구합니다.</a>
                                </h2>

                                <div class="meta-top">
                                    <ul>
                                        <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-details.html">닉네임</a></li>
                                        <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-details.html"><time datetime="2022-01-01">May 01, 2023</time></a></li>
                                        <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-details.html">12 Comments</a></li>
                                    </ul>
                                </div>

                                <div class="content">
                                    <p>
                                        공대 네트워크 전공책 구합니다!! 댓글 달아주세요
                                    </p>
                                </div>

                            </article>
                        </div><!-- End post list item -->
                    </div><!-- End blog posts list -->

                </div>

            </div>

        </div>
    </section><!-- End Blog Section -->

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
</footer>
<a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<div id="preloader"></div>
