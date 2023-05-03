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
    function tagBtn(tagName, tagNum) {
        let data = {"tagName":tagName, "tagNum": tagNum};

        $.ajax({
            type:"GET",
            url: "/tagCommunity",
            data: data,
            success : function (result) {
                if(result.code == "00" || true) {
                    let commuHtml = '';
                    for(let row of result.list) {
                        commuHtml += '<div class="col-lg-6"> <article class="d-flex flex-column">';
                        commuHtml += '<h2 class="title">';
                        <%--commuHtml += '<a onclick="location.href='/getCommunity?communityIdx='+${var.COMMU_IDX}">${var.COMMU_TITLE}</a>';--%>
                        commuHtml += '</h2>';

                        commuHtml += '</article></div>';
                    }
                }
            },
            error: function (e) {
                console.log("ERROR : ", e);
            }
        });
    }
</script>