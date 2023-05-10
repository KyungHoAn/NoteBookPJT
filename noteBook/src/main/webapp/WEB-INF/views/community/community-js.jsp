<%--
  Created by IntelliJ IDEA.
  User: angyeongho
  Date: 2023/04/06
  Time: 8:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<script type="text/javascript">
    $(document).ready(function () {

        let pageSize = "${pageSize}";
        let pageHtml = '';
        pageHtml += '<ul class="justify-content-center">';

        if(pageSize<9) {
            // pageHtml += '<li class="active"><a href="#">1</a></li>';
            pageHtml += '<li><input id="first">1</input></li>';
        } else if(pageSize<17){
            pageHtml += '<li><a href="#" onclick="pageClick(0)">1</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(8)">2</a></li>';
        } else if(pageSize<25){
            pageHtml += '<li><a href="#" onclick="pageClick(0)">1</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(8)">2</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(16)>3</a></li>';
        } else if(pageSize<33){
            pageHtml += '<li><a href="#" onclick="pageClick(0)>1</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(8)>2</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(16)>3</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(24)>4</a></li>';
        } else if(pageSize<41){
            pageHtml += '<li><a href="#" onclick="pageClick(0)>1</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(8)>2</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(16)>3</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(24)>4</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(32)>5</a></li>';
        } else if(pageSize<49){
            pageHtml += '<li><a href="#" onclick="pageClick(0)>1</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(8)>2</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(16)>3</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(24)>4</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(32)>5</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(40)>6</a></li>';
        }
        pageHtml += '</ul>';
        $("#pageList").append(pageHtml);
    })

    const pageClick = (params) => {
        let data = {"startCnt":params, "offset":8};

        $.ajax({
            type:"GET",
            url: "/pageCommunity",
            data: data,
            cache: false,
            success: function (result) {
                $("#communityMain").empty();
                let commuList = '';
                for(let row of result.communityList) {
                    commuList += '<div class="col-lg-6">';
                    commuList += '<article class="d-flex flex-column">';
                    commuList += '<h2 class="title"><a onclick="\'/getCommunity?communityIdx=\''+row.COMMU_IDX+'">'+row.COMMU_TITLE+'</a></h2>';
                    commuList += '<div class="meta-top"><ul>';
                    commuList += '<li class="d-flex align-items-center"><i class="bi bi-person"></i>'+row.USER_NAME+'</li><br>';
                    commuList += '<li class="d-flex align-items-center"><i class="bi bi-clock"></i><time datetime="2023-05-01">'+row.commu_date+'</time></li><br>';
                    commuList += '<li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i>'+row.comentNum+' 게시글</li>';
                    commuList += '</div></ul>';
                    commuList += '<div class="content"><p>'+row.COMMU_CONTENT+'</p></div>';
                    commuList += '</article>';
                    commuList += '</div>';
                }
                $("#communityMain").append(commuList);
            },
            error: function (e) {
                console.log("ERROR : "+e);
            }
        });
    }

    function tagBtn(tagName, tagNum) {
        let data = {"tagName":tagName, "tagNum": tagNum};

        $.ajax({
            type:"GET",
            url: "/tagCommunity",
            data: data,
            success : function (result) {
                if(result.code == "00" || true) {
                    let commuList = '';
                    $("#communityMain").empty();
                    for(let row of result.list) {
                        console.log(row)
                        commuList += '<div class="col-lg-6">';
                        commuList += '<article class="d-flex flex-column">';
                        commuList += '<h2 class="title"><a onclick="\'/getCommunity?communityIdx=\''+row.COMMU_IDX+'">'+row.COMMU_TITLE+'</a></h2>';
                        commuList += '<div class="meta-top"><ul>';
                        commuList += '<li class="d-flex align-items-center"><i class="bi bi-person"></i>'+row.USER_NAME+'</li><br>';
                        commuList += '<li class="d-flex align-items-center"><i class="bi bi-clock"></i><time datetime="2023-05-01">'+row.commu_date+'</time></li><br>';
                        commuList += '<li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i>'+row.comentNum+' 게시글</li>';
                        commuList += '</div></ul>';
                        commuList += '<div class="content"><p>'+row.COMMU_CONTENT+'</p></div>';
                        commuList += '</article>';
                        commuList += '</div>';
                    }
                    $("#communityMain").append(commuList);
                }
            },
            error: function (e) {
                console.log("ERROR : ", e);
            }
        });
    }
</script>