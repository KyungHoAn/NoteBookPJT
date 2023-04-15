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
                    console.log(result.result)
                    let bookImgHtml = '';
                    bookImgHtml +='<img src="'+result.result[0].image+'" class="img-fluid" alt="" style="width:300px; height:350px;">';

                    let bookHtml = '';
                    bookHtml +='<div>';
                    bookHtml +='<li><strong>책 제목</strong>: '+result.result[0].title +'</li>';
                    bookHtml +='<li style="margin-top:5px;"><strong>책 저자</strong>: '+result.result[0].author +' </li>';
                    bookHtml +='<li style="margin-top:5px;"><strong>출 판 사</strong>: '+result.result[0].publisher +' </li>';
                    bookHtml +='<li style="margin-top:5px;"><strong>책 가격</strong>: '+result.result[0].price+' </li>';
                    bookHtml +='<li style="margin-top:5px;"><strong>판매 가격</strong>: <input class="input is-normal" id="bookDetail" name="bookDetail" type="text" style="width: 6cm; height:30px" placeholder="판매 가격"></li>';
                    bookHtml +='<li style="margin-top:5px;"><strong>판매 책 정보</strong>:</li>';
                    bookHtml +='<textarea row="4" cols="70" style="margin-top: 5px;" placeholder="판매 정보 입력"></textarea>';
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
</script>
