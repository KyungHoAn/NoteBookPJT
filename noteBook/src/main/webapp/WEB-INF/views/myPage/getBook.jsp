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
                                <img src="${list.BOOK_IMG}" alt="" style="width: 400px;">
                            </div>

                            <div class="swiper-slide">
                                <img src="" alt="">
                            </div>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="portfolio-info">
                        <h3>시나공 정보처리기사
                            <c:if test="${userId eq list.USER_ID}">
                                <button type="button" id="deleteBookBtn" class="btn btn-outline-secondary" style="float: right;">책 삭제</button>
                            </c:if>
                            <c:if test="${userId ne list.USER_ID}">
                                <button type="button" id="basketBtn" class="btn btn-outline-secondary" style="float: right;">찜하기</button>
                            </c:if>
                        </h3>
                        <ul>
                            <li><strong>Category</strong>: BOOK</li>
                            <li><strong>책</strong>: ${list.BOOK_TITLE}</li>
                            <li><strong>저자</strong>: ${list.BOOK_AUTHOR}</li>
                            <li><strong>출판사</strong>: ${list.BOOK_PUBLISHER}</li>
                            <li><strong>판매 가격</strong>:
                                <c:if test="${userId eq list.USER_ID}">
                                    <input class="input is-normal" type="text" id="bookPrice" name="bookPrice" value="${list.BOOK_SELLING_PRICE}" style="width:100px"> 원
                                    <button type="button" id="priceBtn" class="btn btn-outline-secondary" style="margin-left:10px;">가격수정</button>
                                </c:if>
                                <c:if test="${userId ne list.USER_ID}">
                                    ${list.BOOK_SELLING_PRICE} 원
                                </c:if>
                            </li>
                            <li><strong>판매자</strong>: ${list.USER_NAME}</li>
                        </ul>
                    </div>
                    <div class="portfolio-description">
                        <h2>책의 상세 내용
                            <c:if test="${userId eq list.USER_ID}">
                                <button type="button" id="contentBtn" class="btn btn-outline-secondary" style="margin-left:10px;">내용수정</button>
                            </c:if>
                        </h2>
                        <p>
                            <c:if test="${userId eq list.USER_ID}">
                                <textarea class="input is-normal" id="content" name="content">${list.BOOK_CONTENT}</textarea>
                            </c:if>
                            <c:if test="${userId ne list.USER_ID}">
                                ${list.BOOK_CONTENT}
                            </c:if>
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
                                <textarea class="textarea" id="bookChat" name="bookChat" placeholder="게시글 작성"></textarea>
                            </p>
                        </div>
                        <nav class="level">
                            <div class="level-left">
                                <div class="level-item">
                                    <a class="button is-info" id="chatBtn">게시글 작성</a>
                                </div>
                            </div>
                        </nav>
                    </div>
                </article>

                <!-- 게시글 -->
                <div class="comments" id="bookComments">
                    <c:forEach var="var" items="${chatList}" varStatus="status">
                        <div class="media" id="${var.BOOK_CHAT_IDX}">
                            <figure class="media-left">
                                <p class="image is-64x64">
                                    <img src="https://bulma.io/images/placeholders/128x128.png">
                                </p>
                            </figure>

                            <div class="media-content">
                                <div class="content">
                                    <p>
                                        <strong>${var.USER_NAME}</strong> <small>${var.USER_ID}</small> <small>${var.CHAT_DATE}</small>
                                        <br>
                                        ${var.CHAT_CONTENT}
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
                                <c:if test="${userId eq var.USER_ID}">
                                    <button class="delete" type="button" id="chatDel" onclick="bookChatDel(${var.BOOK_CHAT_IDX})"></button>
                                </c:if>
                            </div>
                        </div>
                    </c:forEach>
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
                    <strong><span>공책</span></strong>.
                </div>
                <div class="credits">
                    Designed by Team.Spring</a>
                </div>
            </div>

        </div>
    </div>

</footer><!-- End Footer -->

<a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<div id="preloader"></div>
