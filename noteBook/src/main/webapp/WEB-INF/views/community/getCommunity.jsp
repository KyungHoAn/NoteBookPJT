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
        <div class="col-lg-8">
          <article class="blog-details" style="margin-bottom: 50px;">
            <h2 class="title">${list.COMMU_TITLE}</h2>

            <div class="meta-top">
              <ul>
                <li class="d-flex align-items-center"><i class="bi bi-person"></i>${list.USER_NAME}</li>
                <li class="d-flex align-items-center"><i class="bi bi-clock"></i><time datetime="2020-01-01">${list.commu_date}</time></li>
                <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i>${list.comentNum} 게시글</li>
              </ul>
            </div><!-- End meta top -->

            <div class="content">
              <p>
                ${list.COMMU_CONTENT}
              </p>
            </div><!-- End post content -->

            <div class="meta-bottom">
              <i class="bi bi-tags"></i>
              <ul class="tags">
                <c:if test="${list.CODE_BOOK ne null}">
                  <li>책</li>
                </c:if>
                <c:if test="${list.CODE_STUDY ne null}">
                  <li>스터디</li>
                </c:if>
                <c:if test="${list.CODE_GOOD ne null}">
                  <li>칭찬방</li>
                </c:if>
                <c:if test="${list.CODE_BAD ne null}">
                  <li>비난방</li>
                </c:if>
                <c:if test="${list.CODE_MAP ne null}">
                  <li>지도</li>
                </c:if>
                <c:if test="${list.CODE_COMPARE ne null}">
                  <li>공구</li>
                </c:if>
              </ul>
              <div style="float: right;">
                <c:if test="${userId eq list.USER_ID}">
                  <button type="button" class="btn btn-outline-secondary" onclick="location.href='/updateCommunity?commuIdx='+${list.COMMU_IDX}">수정</button>
                  <button type="button" class="btn btn-outline-secondary" id="deleteCommunity">삭제</button>
                </c:if>
              </div>
            </div><!-- End meta bottom -->

          </article><!-- End blog post -->

          <div><!-- 게시글 작성-->
            <article class="media" style="margin-bottom:30px">
              <figure class="media-left">
                <p class="image is-64x64">
                  <img src="../../img/logo/logo1.jpeg">
                </p>
              </figure>
              <div class="media-content">
                <div class="field">
                  <p class="control">
                    <textarea class="textarea" id="communityChat" name="communityChat" placeholder="게시글 작성"></textarea>
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

            <div class="comments" id="communityComments">
              <c:forEach var="var" items="${chatList}" varStatus="status">
                <div class="media" id="${var.COMMUNITY_CHAT_IDX}">
                  <figure class="media-left">
                    <p class="image is-64x64">
                      <img src="../../img/logo/logo2.jpeg">
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
                      <button class="delete" type="button" id="chatDel" onclick="bookChatDel(${var.COMMUNITY_CHAT_IDX})"></button>
                    </c:if>
                  </div>
                </div>
              </c:forEach>
            </div><!-- End blog comments -->
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
                <li><a href="#">책 중고거래 <span>(${tag.bookNum})</span></a></li>
                <li><a href="#">스터디 <span>(${tag.studyNum})</span></a></li>
                <li><a href="#">칭찬양파 <span>(${tag.goodNum})</span></a></li>
                <li><a href="#">비난양파 <span>(${tag.badNum})</span></a></li>
                <li><a href="#">캠퍼스 맵 <span>(${tag.mapNum})</span></a></li>
                <li><a href="#">공구<span>(${tag.mapNum})</span></a></li>
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

          </div><!-- End Blog Sidebar -->

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
          &copy; Copyright <strong><span>공책</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
          Designed by <a href="https://github.com/KyungHoAn/NoteBookPJT">Team. Spring</a>
        </div>
      </div>
      <div class="social-links order-first order-lg-last mb-3 mb-lg-0">
        <a href="https://github.com/KyungHoAn/NoteBookPJT" class="github">github</a>
      </div>

    </div>
  </div>

</footer><!-- End Footer -->

<a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<div id="preloader"></div>
