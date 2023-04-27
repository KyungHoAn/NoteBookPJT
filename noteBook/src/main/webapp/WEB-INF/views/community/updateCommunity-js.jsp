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
                
            },
            error: function(e) {

            }
        });
    })
</script>