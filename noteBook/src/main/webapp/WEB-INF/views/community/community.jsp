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
                <h2>커뮤니티</h2>
                <ol>
                    <li><a onclick="location.href='/'">Home</a></li>
                    <li>커뮤니티</li>
                </ol>
            </div>

        </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
        <div class="container" data-aos="fade-up">

            <div class="row g-5">
                <div class="col-lg-8">

                    <div class="row gy-4 posts-list" id="communityMain">
                        <c:forEach var="var" items="${list}" varStatus="status">
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

<%--                    <div class="text-center">--%>
<%--                        <c:if test="${pageSize != 0}">--%>
<%--                            <ul class="pagination">--%>
<%--                                <paginator:print goPageScript="goPage" curPage="1" totPages="${pageSize}"/>--%>
<%--                            </ul>--%>
<%--                        </c:if>--%>
<%--                    </div>--%>
                    <div class="blog-pagination" id="pageList">

                    </div>

                </div>

                <div class="col-lg-4">

                    <div class="sidebar">

                        <div class="sidebar-item search-form">
                            <h3 class="sidebar-title">검색</h3>
                            <form action="" class="mt-3">
                                <input type="text">
                                <button type="submit"><i class="bi bi-search"></i></button>
                            </form>
                            <div style="margin-top: 20px;">
                                <button class="btn btn-outline-secondary" onclick="location.href='/addCommunity'">게시글 작성</button>
                            </div>
                        </div><!-- End sidebar search formn-->

                        <div class="sidebar-item categories">
                            <h3 class="sidebar-title">Categories</h3>
                            <ul class="mt-3">
                                <li><a href="#" onclick="tagBtn('bookTag', 1)">책 중고거래 <span>(${tag.bookNum})</span></a></li>
                                <li><a href="#" onclick="tagBtn('studyTag', 2)">스터디 <span>(${tag.studyNum})</span></a></li>
                                <li><a href="#" onclick="tagBtn('goodTag',3)">칭찬양파 <span>(${tag.goodNum})</span></a></li>
                                <li><a href="#" onclick="tagBtn('badTag',4)">비난양파 <span>(${tag.badNum})</span></a></li>
                                <li><a href="#" onclick="tagBtn('mapTag',5)">캠퍼스 맵 <span>(${tag.mapNum})</span></a></li>
                                <li><a href="#" onclick="tagBtn('compareTag', 6)">공구<span>(${tag.mapNum})</span></a></li>
                            </ul>
                        </div><!-- End sidebar categories-->

                        <div class="sidebar-item recent-posts">
                            <h3 class="sidebar-title">최근 게시물</h3>

                            <div class="mt-3">
                                <c:forEach var="var" items="${subList}" varStatus="status">
                                    <div class="post-item mt-3">
                                        <div>
                                            <h4><a onclick="location.href='/getCommunity?communityIdx='+${var.COMMU_IDX}">${var.COMMU_TITLE}</a></h4>
                                            <time datetime="2023-01-01">${var.commu_date}</time>
                                        </div>
                                    </div><!-- End recent post item-->
                                </c:forEach>
                            </div>

                        </div><!-- End sidebar recent posts-->

                        <div class="sidebar-item tags">
                            <h3 class="sidebar-title">Tags</h3>
                            <ul class="mt-3">
                                <li><a href="#" onclick="tagBtn('bookTag', 1)">책</a></li>
                                <li><a href="#" onclick="tagBtn('studyTag', 2)">스터디</a></li>
                                <li><a href="#" onclick="tagBtn('goodTag',3)">칭찬방</a></li>
                                <li><a href="#" onclick="tagBtn('badTag',4)">비난방</a></li>
                                <li><a href="#" onclick="tagBtn('mapTag',5)">지도</a></li>
                                <li><a href="#" onclick="tagBtn('compareTag',6)">공구</a></li>
                            </ul>
                        </div><!-- End sidebar tags-->
                    </div><!-- End Blog Sidebar -->
                </div>
            </div>
        </div>
    </section><!-- End Blog Section -->

</main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer" class="footer" style="padding: 0rem 0rem 0rem; position: absolute;  left:0; right: 0;">

    <div class="footer-legal text-center">
        <div class="container d-flex flex-column flex-lg-row justify-content-center justify-content-lg-between align-items-center">

            <div class="d-flex flex-column align-items-center align-items-lg-start">
                <div class="copyright">
                    &copy; Copyright <strong><span>공책</span></strong>. All Rights Reserved
                </div>
                <div class="credits">
                    Designed by <a href="https://bootstrapmade.com/">Team. Spring</a>
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
