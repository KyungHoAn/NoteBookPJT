<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<script type="text/javascript">
    function test() {
        let login = document.getElementById("login");
        let join = document.getElementById("join");

        login.css('display','none')
    }

    $('#schoolCheck').click(function(){
        let email = document.getElementById('emailBox');
        email.style.display = 'block';
    })

    $('#emailCheck').click(function() {
        let code = document.getElementById('codeBox');
        code.style.display = 'block';
    })

    $('#codeCheck').click(function() {
        let pwd = document.getElementById('pwdBox');
        pwd.style.display = 'block';
    })

    $('#pwdCheck').click(function() {
        let join = document.getElementById('joinBox');
        join.style.display = 'block';

    })
    $('#joinBtn').click(function() {
        document.location.href='index.html';
    })

</script>