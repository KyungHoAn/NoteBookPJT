<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<!-- ======= Header ======= -->
<header id="header" class="header fixed-top" data-scrollto-offset="0">
    <div class="container-fluid d-flex align-items-center justify-content-between">

        <a onclick="location.href='/home'" class="logo d-flex align-items-center scrollto me-auto me-lg-0">

            <h1>공책<span>.</span></h1>
        </a>

        <nav id="navbar" class="navbar">
            <ul>
                <li><a onclick="location.href='/home'"><span>Home</span></a></li>
                <li><a onclick="location.href='/community'">커뮤니티</a></li>
                <li><a onclick="location.href='/mapView'">캠퍼스 맵</a></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle d-none"></i>
        </nav><!-- .navbar -->

        <a class="btn-getstarted scrollto" onclick="">Get Started</a>

    </div>
</header><!-- End Header -->

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>Login Page</h2>
                <ol>
                    <li><a onclick="location.href='/home'">Home</a></li>
                    <li>Login Page</li>
                </ol>
            </div>

        </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Login Section ======= -->
    <form>
        <section class="inner-page" style="margin-top: 2cm" id="login">
            <div class="container" data-aos="fade-up">
                <div class="section-header">

                    <div class="content is-medium">
                        <h1>로그인</h1>
                    </div>

                    <div class="field">
                        <p class="control has-icons-left has-icons-right">
                            <input class="input" id="loginId" name="un" type="id" placeholder="이메일 입력" style="width: 10cm">
                            <span class="icon is-small is-left">
                              <i class="fas fa-envelope"></i>
                            </span>
                            <span class="icon is-small is-right">
                              <i class="fas fa-check"></i>
                            </span>
                        </p>
                    </div>
                    <div class="field">
                        <p class="control has-icons-left">
                            <input class="input" type="password" id="loginPw" name="up" placeholder="패스워드 입력" style="width: 10cm; margin-left: 2.1cm">
                            <span class="icon is-small is-left">
                              <i class="fas fa-lock"></i>
                            </span>
                            <button type="button" class="button is-primary is-light" id="loginBtn" onclick="loginSubmit()">로그인</button>
                        </p>
                    </div>

                    <div>
                        <h6 class="title is-6">
                            <a onclick="location.href='/auth/join'">회원가입</a>
<%--                            &nbsp;&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;--%>
<%--                            <a>비밀번호 찾기</a>--%>
                        </h6>
                    </div>
                </div>
            </div>
        </section><!-- End Inner Page -->
    </form>

    <!-- 회원가입 Section -->


</main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer" class="footer" style="padding: 3rem 0rem 0rem; position: absolute; bottom: 0; left:0; right: 0;">

    <div class="footer-legal text-center">
        <div class="container d-flex flex-column flex-lg-row justify-content-center justify-content-lg-between align-items-center">

            <div class="d-flex flex-column align-items-center align-items-lg-start">
                <div class="copyright">
                    &copy; Copyright <strong><span>공책</span></strong>.
                </div>
                <div class="credits">
                    Designed by <a href="">Team.Spring</a>
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