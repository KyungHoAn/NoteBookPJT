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

    // 책 게시물 작성
    $("#chatBtn").click(function() {
        let chatContent = $("#bookChat").val();
        console.log(chatContent);
        let data = {"bookChat": chatContent, "bookIdx":${list.BOOK_IDX}};

        $.ajax({
            type:"POST",
            enctype: 'multipart/form-data',
            url:'/insertBookChat',
            data: data,
            success: function(result) {
                let chatHtml ='';
                if(result.code == "00" || true) {
                    chatHtml += '<div class="media">';
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
                        '<a class="level-item"> <span class="icon is-small"><i class="fas fa-heart"></i></span> </a> </div> ' +
                        '</nav></div>';
                    chatHtml +='<div class="media-right"> <button class="delete" type="button" id="chatDel"></button> </div>';
                    chatHtml +='</div>';
                }
                $("#bookComments").append(chatHtml);
            },
            error: function(e) {
                console.log("ERROR : ", e);
            }
        });
    });

    function bookChatDel(chatIdx, userId) {
        let data = {"chatIdx":chatIdx, "userId": userId};

    }

</script>