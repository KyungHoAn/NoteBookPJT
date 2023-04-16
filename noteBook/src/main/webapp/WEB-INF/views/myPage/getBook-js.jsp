<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">
    $("#priceBtn").click(function() {
        let price = $("#bookPrice").val();
        let data = {"bookPrice":price, "bookIdx":${list.BOOK_IDX}};

        $.ajax({
            type:"POST",
            enctype: 'multipart/form-data',
            url:"/updateBookPrice",
            data: data,
            success: function(){
                alert("가격이 변경되었습니다.")
            },
            error: function(e) {
                console.log("ERROR : ", e);
            }
        });
    });

    $("#contentBtn").click(function() {
        let content = $("#content").val();
        let data = {"bookContent": content, "bookIdx": ${list.BOOK_IDX}};

        $.ajax({
            type:"POST",
            enctype: 'multipart/form-data',
            url:"/updateBookContent",
            data: data,
            success: function(){
                alert('책 상세 내용이 변경되었습니다.')
            },
            error: function(e){
                console.log("ERROR : ", e);
            }
        });
    });

    $("#deleteBookBtn").click(function() {
        let data = {"bookIdx": ${list.BOOK_IDX}};

    })
</script>