<%@ page contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<script type="text/javascript">
    function loginSubmit() {
        let params = {
            'un' : $.trim($("#loginId").val())
            , 'up' : $("#loginPw").val()
        }

        $.ajax({
            type: 'POST',
            url: '/auth/login-proc',
            dataType : 'json',
            data: params,
            success: function(result) {
                if(result.resultCode != "00") {
                    Swal.fire(
                        '존재하지 않는 회원',
                        '아이디 또는 비밀번호를 확인하여 주세요',
                        'question'
                    )
                } else {
                    location.href=result.targetUrl;
                }
            },
            error: function(request, status, error) {

            }
        })
    }

    function join() {
        location.href = 'join.html'
    }
</script>
