<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<script type="text/javascript">
    $(document).ready(function () {
        let bookCnt = "${bookCnt}";
        let pageHtml = '';

        pageHtml += '<ul class="justify-content-center">';
        if(bookCnt<10) {
            pageHtml += '<li><a href="#" onclick="pageClick(0)">1</input></li>';
        } else if(bookCnt<18){
            pageHtml += '<li><a href="#" onclick="pageClick(0)">1</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(9)">2</a></li>';
        } else if(bookCnt<26){
            pageHtml += '<li><a href="#" onclick="pageClick(0)">1</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(9)">2</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(18")>3</a></li>';
        } else if(bookCnt<34){
            pageHtml += '<li><a href="#" onclick="pageClick(0)">1</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(9)">2</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(18)">3</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(27)">4</a></li>';
        } else if(bookCnt<42){
            pageHtml += '<li><a href="#" onclick="pageClick(0)">1</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(9)">2</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(18)">3</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(27)">4</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(36)">5</a></li>';
        } else if(bookCnt<50){
            pageHtml += '<li><a href="#" onclick="pageClick(0)">1</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(9)">2</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(18)">3</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(27)">4</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(36)">5</a></li>';
            pageHtml += '<li><a href="#" onclick="pageClick(45)">6</a></li>';
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

    const pageClick = (params) => {
        let data = {"start":params, "offset":9};

        $.ajax({
            type:"GET",
            url:"/bookPage",
            data: data,
            cache: false,
            success: function (result) {
                console.log("====>> ")
                console.log(result)
                let bookHtml = '';
                $("#bookList").empty();
                for(let row of result.bookList) {
                    bookHtml += '<div class="col-xl-4 col-md-6" data-aos="zoom-in" data-aos-delay="200"><div class="service-item">';
                    bookHtml += '<div class="img" style="margin-left: 70px;">';
                    bookHtml += '<img src="'+row.BOOK_IMG+'" class="img-fluid" alt="" style="width: 280px;"></div>';
                    bookHtml += '<div class="details position-relative">';
                    bookHtml += '<div class="icon"><i class="bi bi-activity"></i></div>';
                    bookHtml += '<a onclick="location.href=\'/book/getBook?bookIdx='+row.BOOK_IDX+'\'" class="stretched-link"><h3>'+row.BOOK_TITLE+'</h3></a>';
                    bookHtml += '</div>';
                    bookHtml += '</div></div>';
                }
                $("#bookList").append(bookHtml);
            },
            error: function (e) {
                console.log("ERROR: "+e);
            }
        })
    }
</script>