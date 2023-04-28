<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<script type="text/javascript">

    // 커뮤니티 게시물 작성
    $("#chatBtn").click(function() {
       let chatContent = $("#communityChat").val();
        let data = {"chatContent":chatContent, "communityIdx":${list.COMMU_IDX}};

        $.ajax({
            type:"POST",
            url: "/insertCommunityChat",
            data: data,
            success : function(result) {
                $("#communityChat").val('');
                let chatHtml = '';
                if(result.code == "00" || true) {
                    chatHtml += '<div class="media" id="'+result.COMMUNITY_IDX+'">';
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
                        chatHtml +='<button class="delete" type="button" id="chatDel" onclick="bookChatDel('+result.COMMUNITY_IDX+')"></button>';
                    }
                    chatHtml +='</div></div>';
                }
                $("#communityComments").append(chatHtml);
            },
            error: function (e) {
                console.log("ERROR : ", e);
            }
        });
    });

    function bookChatDel(chatIdx) {
        let data = {"chatIdx": chatIdx};
        let chatCont = document.getElementById(chatIdx);
        $.ajax({
            type: 'POST',
            url: "/deleteCommunityChat",
            data: data,
            success: function (result) {
                if(result.code == "00" || true) {
                    chatCont.remove();
                } else {
                    alert("게시글을 삭제할 수 없습니다. \n 관리자에게 문의하십시오");
                }
            },
            error: function (e) {
                console.log("ERROR : ", e);
            }
        });
    }


    $("#deleteCommunity").click(function() {
        console.log('delete')
        let data = {"commuIdx": "${list.COMMU_IDX}"};
        $.ajax({
            type: "POST",
            data: data,
            url: "/deleteCommunity",
            success: function(result) {
                if(result.code= "00" || true) {
                    Swal.fire('정상적으로 게시되었습니다.').then((result) => {
                        location.href = '/community';
                    });
                }
            },
            error: function (e) {
                console.log("ERROR : "+ e)
            }
        });
    })
</script>