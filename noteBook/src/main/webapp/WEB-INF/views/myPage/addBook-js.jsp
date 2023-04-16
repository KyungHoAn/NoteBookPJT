<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<script type="text/javascript">
    $('#searchBtn').click(function() {
        let book = document.getElementById('detail_book');
        book.style.display = 'block';
        let isbn = $("#isbn").val();
        let data = {"isbn":isbn};

        $.ajax({
            type:"POST",
            enctype: 'multipart/form-data',
            url: "/searchBook",
            data: data,
            success: function(result) {
                if(result.code == "00" || true) {
                    let bookImgHtml = '';
                    bookImgHtml +='<img src="'+result.result[0].image+'" class="img-fluid" alt="" style="width:300px; height:350px;">';
                    bookImgHtml +='<input type="hidden" id="bookImg" name="bookImg" value="'+result.result[0].image+'">';

                    let bookHtml = '';
                    bookHtml +='<div>';
                    bookHtml +='<li><strong>책 제목</strong>: <input class="input is-normal" type="text" id="title" name="title" value="'+result.result[0].title +'" style="width: 9cm; height:25px; border:0 solid black"></li>';
                    bookHtml +='<li style="margin-top:5px;"><strong>책 저자</strong>: <input type="text" id="author" name="author" value="'+result.result[0].author +'" style="width: 9cm; height:25px; border:0 solid black"></li>';
                    bookHtml +='<li style="margin-top:5px;"><strong>출 판 사</strong>: <input type="text" id="publisher" name="publisher" value="'+result.result[0].publisher +'" style="width: 9cm; height:25px; border:0 solid black"></li>';
                    bookHtml +='<li style="margin-top:5px;"><strong>책 가격</strong>: <input type="text" id="bookPrice" name="bookPrice" value="'+result.result[0].price+'" style="width: 9cm; height:25px; border:0 solid black"></li>';
                    bookHtml +='<li style="margin-top:5px;"><strong>판매 가격</strong>: <input class="input is-normal" id="price" name="price" type="text" style="width: 8cm; height:25px" placeholder="판매 가격"></li>';
                    bookHtml +='<li style="margin-top:5px;"><strong>판매 책 정보</strong>:</li>';
                    bookHtml +='<textarea class="input is-normal" row="4" cols="70" style="margin-top: 5px;" id="content" name="content" value="content" placeholder="판매 정보 입력"></textarea>';
                    bookHtml +='<div>';

                    $("#bookImg").append(bookImgHtml);
                    $("#tab1").append(bookHtml);
                }
            },
            error: function (e) {
                console.log("ERROR : ", e);
            }
        })
    })

    $("#insertBookBtn").click(function() {
        let form = $('#bookDetail')[0];
        let data = new FormData(form);

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/insertBook",
            data: data,
            processData: false,
            contentType: false,
            cache: false,
            success: function() {
                alert("등록되었습니다.")
                document.location.href='/myPageView';
            },
            error: function(e) {

            }
        })
    })

</script>
