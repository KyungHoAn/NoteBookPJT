<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-migrate-3.1.0.min.js"></script>

<!-- Template Main JS File -->
<script type="text/javascript" src="../js/main.js"></script>

<script type="text/javascript" src="../js/bootstrap/bootstrap.bundle.js"></script>
<script type="text/javascript" src="../js/bootstrap/validate.js"></script>
<script type="text/javascript" src="../js/bootstrap/swiper-bundle.min.js"></script>
<script type="text/javascript" src="../js/bootstrap/glightbox.min.js"></script>
<script type="text/javascript" src="../js/bootstrap/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="../js/bootstrap/aos.js"></script>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<meta name="_csrf" content="${_csrf.token}"/>
<script>
    let csrfToken = $("meta[name='_csrf']").attr("content");
    $.ajaxPrefilter(function(options, originalOptions, jqXHR){
        if (options['type'].toLowerCase() === "post") {
            jqXHR.setRequestHeader('X-CSRF-TOKEN', csrfToken);
        }
    });
</script>
