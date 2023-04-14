<%@ page contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<script type="text/javascript">
    function loginSubmit() {
        let params = {
            'un' : $.trim($("#loginId").val())
            , 'up' : $("#loginPw").val()
        }
        console.log(params);

        $.ajax({
            type: 'POST',
            url: '/auth/login-proc',
            dataType : 'json',
            data: params,
            success: function(result) {
                console.log(result);
                location.href='/';
            },
            error: function(request, status, error) {

            }
        })
    }

    function join() {
        location.href = 'join.html'
    }
</script>
