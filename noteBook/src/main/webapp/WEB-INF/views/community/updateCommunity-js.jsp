<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<script type="text/javascript">

    $("#updateCommunityBtn").click(function () {
        let form = $('#updateCommunity')[0];
        let data = new FormData(form);

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/updateCommunity",
            data: data,
            processData: false,
            contentType: false,
            cache: false,
            success: function (result) {
                if(result.code == "00" || true) {
                    Swal.fire('정상적으로 게시되었습니다.').then((result) => {
                        location.href = "/getCommunity?communityIdx=+"+"${list.COMMU_IDX}";
                    });
                }
            },
            error: function(e) {
                Swal.fire({
                    icon: 'error',
                    text: '게시글 올리기 실패, 관리자에게 문의바랍니다!'
                });
            }
        });
    })
</script>