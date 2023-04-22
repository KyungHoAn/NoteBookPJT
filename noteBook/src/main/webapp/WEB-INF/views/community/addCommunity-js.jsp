<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">
    $("#addCommunityBtn").click(function () {

        let form = $('#addCommunity')[0];
        let data = new FormData(form);

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/insertCommunity",
            data: data,
            processData: false,
            contentType: false,
            cache: false,
            success: function (result) {

            },
            error: function(e) {
                console.log("ERROR : ", e);
            }
        });
    })
</script>