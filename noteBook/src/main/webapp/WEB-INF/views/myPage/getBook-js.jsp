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
        console.log(data);

        Swal.fire({
            title: '해당 책을 지우시겠습니까?',
            text: "책을 삭제하시면 댓글도 지워집니다!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: '삭제!',
            cancelButtonText: '취소'
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    type:"POST",
                    enctype: 'multipart/form-data',
                    url:"/deleteBook",
                    data: data,
                    success: function(result) {
                        if(result.code == "00" || true) {
                            document.location.href='/myPageView';
                        }
                    },
                    error: function (e) {
                        console.log("ERROR : ", e);
                    }
                });
            }
        })
    })

    // 책 게시물 작성
    $("#chatBtn").click(function() {
        let chatContent = $("#bookChat").val();
        let data = {"bookChat": chatContent, "bookIdx":${list.BOOK_IDX}};

        $.ajax({
            type:"POST",
            enctype: 'multipart/form-data',
            url:'/insertBookChat',
            data: data,
            success: function(result) {
                $("#bookChat").val('');
                let chatHtml ='';
                if(result.code == "00" || true) {
                    chatHtml += '<div class="media" id="'+result.BOOK_CHAT_IDX+'">';
                    chatHtml += '<figure class="media-left"><p class="image is-64x64"><img src="https://bulma.io/images/placeholders/128x128.png"></p></figure>';
                    chatHtml += '<div class="media-content">';
                    chatHtml +='<div class="content">';
                    chatHtml +='<p><strong>'+result.USER_NAME + '</strong> <small>'+result.USER_ID+'</small> <small>'+result.CHAT_DATE+'</small><br>'+result.CHAT_CONTENT+'</p>';
                    chatHtml +='</div>' +
                        '<nav class="level is-mobile"> ' +
                        '<div class="level-left"> ' +
                        '<a class="level-item"> ' +
                        '<span class="icon is-small"><i class="fas fa-reply"></i></span> </a> ' +
                        '<a class="level-item"> ' +
                        '<span class="icon is-small"><i class="fas fa-retweet"></i></span> ' +
                        '</a> ' +
                        '<a class="level-item"> <span class="icon is-small"><i class="fas fa-heart"></i></span> </a></div> ' +
                        '</nav></div>';
                    chatHtml +='<div class="media-right">';
                    if("${userId}" == result.USER_ID) {
                        chatHtml +='<button class="delete" type="button" id="chatDel" onclick="bookChatDel('+result.BOOK_CHAT_IDX+')"></button>';
                    }
                    chatHtml +='</div></div>';
                }
                $("#bookComments").append(chatHtml);
            },
            error: function(e) {
                console.log("ERROR : ", e);
            }
        });
    });

    function bookChatDel(chatIdx) {
        let data = {"chatIdx":chatIdx};
        let chatCont = document.getElementById(chatIdx);
        $.ajax({
            type:"POST",
            enctype: 'multipart/form-data',
            url: "/deleteBookChat",
            data: data,
            success: function (result) {
                if(result.code == "00" || true) {
                    chatCont.remove();
                } else {
                    alert("게시글을 삭제할 수 없습니다. \n 관리자에게 문의하십시오")
                }
            },
            error : function (e) {
                console.log("ERROR : ", e)
            }
        });
    }

    console.log("${basket.BOOK_BASKET_IDX}")

    function basketBtn(flag) {
        console.log(flag)
        let data = {"bookIdx":"${list.BOOK_IDX}", "flag": flag};
        $.ajax({
            type:"POST",
            enctype: 'multipart/form-data',
            url: "/insertBasket",
            data: data,
            success: function (result) {
                if(result.code == "00" || true) {
                    let basketHtml = '';
                    let baskIdx = "${basket.BOOK_BASKET_IDX}";
                    console.log("baskIDx == > "+baskIdx)
                    if(result.BASKET_FLAG == 1) {
                        basketHtml += '<button type="button" id="basketBtn" class="btn btn-outline-secondary" style="float: right;" onclick="basketBtn(3)">찜 취소</button>';
                    } else {
                        basketHtml += '<button type="button" id="basketBtn" class="btn btn-outline-secondary" style="float: right;" onclick="basketBtn(4)">찜하기</button>';
                    }
                    $("#basketBtn").remove();
                    $("#basket").append(basketHtml);
                }
            },
            error: function (e) {
                console.log("ERROR : ", e)
            }
        });
    }

</script>