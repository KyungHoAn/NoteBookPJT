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
                <c:forEach var="var" items="${basket.list}" varStatus="status">
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

    <!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
        <div class="container" data-aos="fade-up">

            <div class="section-header">
                <h2>올린 게시물</h2>
            </div>

            <div class="row g-5">
                <div class="">

                    <div class="row gy-4 posts-list">
                        <c:forEach var="var" items="${communityList}" varStatus="status">
                            <div class="col-lg-6">
                                <article class="d-flex flex-column">
                                    <h2 class="title">
                                        <a onclick="location.href='/getCommunity?communityIdx='+${var.COMMU_IDX}">${var.COMMU_TITLE}</a>
                                    </h2>
                                    <div class="meta-top">
                                        <ul>
                                            <li class="d-flex align-items-center"><i class="bi bi-person"></i>${var.USER_NAME}</li><br>
                                            <li class="d-flex align-items-center"><i class="bi bi-clock"></i><time datetime="2023-05-01">${var.commu_date}</time></li><br>
                                            <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i>${var.comentNum} 게시글</li>
                                        </ul>
                                    </div>
                                    <div class="content">
                                        <p>
                                                ${var.COMMU_CONTENT}
                                        </p>
                                    </div>
                                </article>
                            </div><!-- End post list item -->
                        </c:forEach>
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
                    <strong><span>공책</span></strong>.
                </div>
                <div class="credits">
                    Designed by Team.Spring</a>
                </div>
            </div>
        </div>
    </div>
</footer>
<a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<div id="preloader"></div>
