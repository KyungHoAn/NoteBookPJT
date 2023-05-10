<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<script type="text/javascript">
    $(document).ready(function () {
        console.log("-----")
        console.log("${bookCnt}")
        let bookCnt = "${bookCnt}";
        let pageHtml = '';

        if(bookCnt<10) {
            // pageHtml += '<li class="active"><a href="#">1</a></li>';
            pageHtml += '<li><input id="first">1</input></li>';
        } else if(bookCnt<18){
            pageHtml += '<li><a href="#" onclick="pageClick(0)">1</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(8)">2</a></li>';
        } else if(bookCnt<26){
            pageHtml += '<li><a href="#" onclick="pageClick(0)">1</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(8)">2</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(16)>3</a></li>';
        } else if(bookCnt<34){
            pageHtml += '<li><a href="#" onclick="pageClick(0)>1</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(8)>2</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(16)>3</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(24)>4</a></li>';
        } else if(bookCnt<42){
            pageHtml += '<li><a href="#" onclick="pageClick(0)>1</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(8)>2</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(16)>3</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(24)>4</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(32)>5</a></li>';
        } else if(bookCnt<50){
            pageHtml += '<li><a href="#" onclick="pageClick(0)>1</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(8)>2</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(16)>3</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(24)>4</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(32)>5</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(40)>6</a></li>';
        }
        pageHtml += '</ul>';
        $("#pageList").append(pageHtml);
    });

    $("#searchBook").keyup("keydown", (e) => {
        let data = {"searchBook": e.target.value};

        $.ajax({
            type: 'GET',
            enctype: 'multipart/form-data',
            url: "/searchBookList",
            data: data,
            success: function (result) {
                if(result.code == "00" || true) {
                    $("#bookList").empty();
                    let searchHtml = '';
                    for(let row of result.list) {
                        searchHtml += '<div class="col-xl-4 col-md-6" data-aos="zoom-in" data-aos-delay="200">';
                        searchHtml +='<div class="service-item">';
                        searchHtml +='<div class="img" style="margin-left: 70px;">';
                        searchHtml +='<img src="'+row.BOOK_IMG+'" class="img-fluid" alt="" style="width: 280px;">'
                        searchHtml +='</div>';
                        searchHtml +='<div class="details position-relative">';
                        searchHtml += '<div class="icon"><i class="bi bi-activity"></i></div>';
                        searchHtml += '<a onclick="location.href=\'/book/getBook?bookIdx='+row.BOOK_IDX+'\'" class="stretched-link">';
                        searchHtml += '<h3>'+row.BOOK_TITLE+'</h3></a>';
                        searchHtml +='<p>판매자: '+row.USER_NAME+'</p>';
                        searchHtml += '</div></div></div>';
                    }
                    $("#bookList").append(searchHtml);
                }
            },
            error: function(e) {
                console.log("ERROR : ", e);
            }
        });
    })
</script>