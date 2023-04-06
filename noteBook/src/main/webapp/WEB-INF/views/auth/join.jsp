<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<!-- ======= Header ======= -->
<header id="header" class="header fixed-top" data-scrollto-offset="0">
    <div class="container-fluid d-flex align-items-center justify-content-between">

        <a onclick="location.href='/'" class="logo d-flex align-items-center scrollto me-auto me-lg-0">
            <!-- Uncomment the line below if you also wish to use an image logo -->
            <!-- <img src="assets/img/logo.png" alt=""> -->
            <h1>공책<span>.</span></h1>
        </a>

        <nav id="navbar" class="navbar">
            <ul>
                <li><a onclick="location.href='/'"><span>Home</span></a></li>
                <li><a onclick="location.href='/community'">커뮤니티</a></li>
                <li><a onclick="location.href='/map'">캠퍼스 맵</a></li>
                <!-- <li><a href="inner-page.html">inner-page</a></li> -->
            </ul>
            <i class="bi bi-list mobile-nav-toggle d-none"></i>
        </nav><!-- .navbar -->

        <a class="btn-getstarted scrollto" onclick="location.href='/login'">Login Page</a>

    </div>
</header><!-- End Header -->

<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>Join Page</h2>
                <ol>
                    <li><a href="index.html">Home</a></li>
                    <li>Join Page</li>
                </ol>
            </div>

        </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Login Section ======= -->
    <form>
        <section class="inner-page" id="join">
            <div class="container" data-aos="fade-up">
                <div class="section-header">

                    <div class="content is-medium">
                        <h1>회원가입</h1>
                    </div>

                    <!-- 학교 인증 -->
                    <div class="field">
                        <p class="control has-icons-left">
                            <input class="input" id="univ" name="univ" type="university" placeholder="University" style="width: 10cm; margin-left: 2.6cm">
                            <span class="icon is-small is-left">
                  <i class="fas fa-lock"></i>
                </span>
                            <button type="button" class="button is-primary is-light" id="schoolCheck">학교 인증</button>
                        </p>
                    </div>

                    <!-- email 인증 -->
                    <div class="field" id="emailBox" style="display:none">
                        <p class="control has-icons-left has-icons-right">
                            <input class="input" type="id" placeholder="School Email" style="width: 10cm; margin-left: 3cm">
                            <span class="icon is-small is-left">
                  <i class="fas fa-envelope"></i>
                </span>
                            <span class="icon is-small is-right">
                  <i class="fas fa-check"></i>
                </span>
                            <button type="button" class="button is-primary is-light" id="emailCheck">이메일 인증</button>
                        </p>
                    </div>

                    <div class="field" id="codeBox" style="display:none">
                        <p class="control has-icons-left has-icons-right">
                            <input class="input" id="code" name="code" type="code" placeholder="Code" style="width: 10cm; margin-left: 2.6cm;">
                            <button type="button" class="button is-primary is-light" id="codeCheck">코드 인증</Button>
                        </p>
                    </div>

                    <!-- Password -->
                    <div id="pwdBox" style="display:none">
                        <div class="field">
                            <p class="control has-icons-left">
                                <input class="input" id="nick" name="nick" type="text" placeholder="Nick Name" style="width: 10cm; margin-left: 2cm">
                                <button type="button" class="button is-primary is-light" id="nickBtn">닉네임</Button>
                            </p>
                        </div>
                        <div class="field">
                            <p class="control has-icons-left">
                                <input class="input" id="fPassword" name="fPassword" type="password" placeholder="Password" style="width: 10cm">
                                <span class="icon is-small is-left">
                    <i class="fas fa-lock"></i>
                  </span>
                            </p>
                        </div>
                        <div class="field">
                            <p class="control has-icons-left">
                                <input class="input" id="sPassword" name="sPassword" type="password" placeholder="Password Check" style="width: 10cm; margin-left: 3.4cm">
                                <button type="button" class="button is-primary is-light" id="pwdCheck">패스워드 인증</Button>
                            </p>
                        </div>
                    </div>

                    <div id="joinBox" class="gap-2 col-1 mx-auto" style="display:none; margin-top: 10px;">
                        <button class="btn btn-outline-dark" type="button" id="joinBtn">회원가입</button>
                    </div>

                </div>
            </div>
        </section><!-- End Inner Page -->
    </form>

    <!-- 회원가입 Section -->


</main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer" class="footer" style="padding: 0rem 0rem 0rem; position: absolute; bottom: 0; left:0; right: 0;">

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
