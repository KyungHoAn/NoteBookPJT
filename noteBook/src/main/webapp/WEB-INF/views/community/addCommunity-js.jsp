<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">
    $("#addCommunityBtn").click(function () {

        let title = $("#title").val();
        if(title == '') {
            Swal.fire({
                icon: 'error',
                text: '제목을 입력하셔야 합니다!'
            });
            return;
        }

        let content = $("#content").val();
        if(content == ''){
            Swal.fire({
                icon: 'error',
                text: '내용을 입력하셔야 합니다!'
            });
            return;
        }

        let form = $('#addCommunity')[0];
        let data = new FormData(form);

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/insertCommunity",
            data: data,
            processData: false,
            contentType: false,
            cache: false,
            success: function (result) {
                Swal.fire('정상적으로 게시되었습니다.').then((result) => {
                        document.location.href='/community';
                })
            },
            error: function(e) {
                console.log("ERROR : ", e);
                Swal.fire({
                    icon: 'error',
                    text: '관리자에게 문의하시기 바랍니다.'
                });
            }
        });
    })
</script>