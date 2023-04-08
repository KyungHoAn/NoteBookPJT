<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<script type="text/javascript">
    $('#searchBtn').click(function() {
        let book = document.getElementById('detail_book');
        book.style.display = 'block';

        let data = {"isbn":"1234"};
        $.ajax({
            type:"POST",
            enctype: 'multipart/form-data',
            url: "",
            data: data,
            success: function(result) {
                console.log(success);
            },
            error: function (e) {
                console.log("ERROR : ", e);
            }
        })
    })
</script>
