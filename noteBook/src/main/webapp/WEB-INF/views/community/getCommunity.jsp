<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <a class="btn-getstarted scrollto" onclick="">로그아웃</a>

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
          <li><a onclick="location.href='/communityView'">커뮤니티</a></li>
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
            <h2 class="title">공대 네트워크책 공구할 사람 구합니다.</h2>

            <div class="meta-top">
              <ul>
                <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-details.html">John Doe</a></li>
                <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-details.html"><time datetime="2020-01-01">Jan 1, 2022</time></a></li>
                <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-details.html">12 Comments</a></li>
              </ul>
            </div><!-- End meta top -->

            <div class="content">
              <p>
                ㅈㄱㄴ 네트워크 책 공구할 사람 찾습니다. 정가 30000원인데 여러명이서 같이하면 인당 20000원에 가지고 가실 수 있어요!
              </p>
            </div><!-- End post content -->

            <div class="meta-bottom">
              <i class="bi bi-tags"></i>
              <ul class="tags">
                <li><a href="#">책</a></li>
                <li><a href="#">공구</a></li>
              </ul>
              <div style="float: right;">
                <button type="button" class="btn btn-outline-secondary" onClick="location.href='add_blog.html'">수정</button>
                <button type="button" class="btn btn-outline-secondary" onClick="location.href='blog.html'">삭제</button>
              </div>
            </div><!-- End meta bottom -->

          </article><!-- End blog post -->

          <div><!-- 게시글 작성-->
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
                <button class="btn btn-outline-secondary" onclick="location.href='/addCommunityView'">게시글 작성</button>
              </div>
            </div><!-- End sidebar search formn-->

            <div class="sidebar-item categories">
              <h3 class="sidebar-title">Categories</h3>
              <ul class="mt-3">
                <li><a href="#">중고거래 <span>(25)</span></a></li>
                <li><a href="#">칭찬양파 <span>(12)</span></a></li>
                <li><a href="#">비난양파 <span>(5)</span></a></li>
                <li><a href="#">캠퍼스 맵 <span>(22)</span></a></li>
                <li><a href="#">스터디 <span>(8)</span></a></li>
              </ul>
            </div><!-- End sidebar categories-->

            <div class="sidebar-item recent-posts">
              <h3 class="sidebar-title">최근 게시물</h3>

              <div class="mt-3">

                <div class="post-item mt-3">
                  <div>
                    <h4><a href="blog-post.html">공대 네트워크 전공책 공구할사람 모집합니다.</a></h4>
                    <time datetime="2020-01-01">Jan 1, 2020</time>
                  </div>
                </div><!-- End recent post item-->

                <div class="post-item">
                  <div>
                    <h4><a href="blog-post.html">공대 000 수업 칭찬</a></h4>
                    <time datetime="2020-01-01">Jan 1, 2020</time>
                  </div>
                </div><!-- End recent post item-->

                <div class="post-item">
                  <div>
                    <h4><a href="blog-post.html">컴소공 난리남</a></h4>
                    <time datetime="2020-01-01">Jan 1, 2020</time>
                  </div>
                </div><!-- End recent post item-->

                <div class="post-item">
                  <div>
                    <h4><a href="blog-post.html">영어 스터디 그룹원 모집</a></h4>
                    <time datetime="2020-01-01">Jan 1, 2020</time>
                  </div>
                </div><!-- End recent post item-->

                <div class="post-item">
                  <div>
                    <h4><a href="blog-post.html">프로젝트 같이 진행할사람!</a></h4>
                    <time datetime="2020-01-01">Jan 1, 2020</time>
                  </div>
                </div><!-- End recent post item-->

              </div>

            </div><!-- End sidebar recent posts-->

            <div class="sidebar-item tags">
              <h3 class="sidebar-title">Tags</h3>
              <ul class="mt-3">
                <li><a href="#">책</a></li>
                <li><a href="#">스터디</a></li>
                <li><a href="#">칭찬방</a></li>
                <li><a href="#">비난방</a></li>
                <li><a href="#">지도</a></li>
                <li><a href="#">공구</a></li>
              </ul>
            </div><!-- End sidebar tags-->

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
