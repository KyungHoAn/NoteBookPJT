<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>

<script type="text/javascript">
    $(document).ready(function () {

    })
    $("#schoolCheck").click(function() {
        let email = document.getElementById('emailBox');
        let univName = $("#univ").val();
        let data = {"univName":univName};

        // success
        // $.ajax({
        //     type: "POST",
        //     enctype: 'multipart/form-data',
        //     url: "/userUniv",
        //     data: data,
        //     success: function (result) {
        //         alert("학교 인증 완료")
                    email.style.display = 'block';
        //     },
        //     error: function (e) {
        //         alert("학교 인증 실패")
        //     }
        // })
    });

    $("#emailCheck").click(function () {
        let univName = $("#univ").val();
        let id = $("#id").val();
        let code = document.getElementById('codeBox');

        let data = {"email":id, "univName":univName};

        // $.ajax({
        //     type: "POST",
        //     enctype: 'multipart/form-data',
        //     url: "/userEmail",
        //     data: data,
        //     success: function (result) {
        //         alert("이메일로 인증번호 전송되었습니다.")
                code.style.display = 'block';
        //     },
        //     error: function (e) {
        //         alert("이메일 인증 실패")
        //     }
        // })
    });

    $("#codeCheck").click(function () {
        let univName = $("#univ").val();
        let id = $("#id").val();
        let code = $("#code").val();
        let pwd = document.getElementById('pwdBox');

        let data = {"email":id, "univName":univName, "code":code};

        // $.ajax({
        //     type: "POST",
        //     enctype: 'multipart/form-data',
        //     url: "/userEmailCode",
        //     data: data,
        //     success: function (result) {
        //         alert("코드 인증 완료.")
                pwd.style.display = 'block';
        //     },
        //     error: function (e) {
        //         alert("코드 인증 실패")
        //     }
        // })
    })

    $("#nickBtn").click(function () {
        let nick = $("#nick").val();
        let data = {"nick": nick};

        // $.ajax({
        //     type: "POST",
        //     enctype: 'multipart/form-data',
        //     url: "/userNick",
        //     data: data,
        //     success: function (result) {
        //         alert("닉네임을 사용할 수 있습니다.")
        //     },
        //     error: function (e) {
        //         alert("중복된 닉네임입니다.")
        //     }
        // });
    })

    $("#pwdCheckBtn").click(function () {
        let firstPw = $("#fPassword").val();
        let secondPw = $("#sPassword").val();

        if(firstPw === secondPw) {
            let join = document.getElementById('joinBox');
            join.style.display = 'block';
        } else {
            alert("비밀번호가 다릅니다.")
        }
    })

    $('#joinBtn').click(function() {
        let form = $('#adminInfo')[0];
        let data = new FormData(form);

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/userJoin",
            data: data,
            processData: false,
            contentType: false,
            cache: false,
            success: function (result) {
                console.log("SUCCESS");
            },
            error: function (e) {
                console.log("ERROR : ", e);
            }
        });
        // document.location.href='index.html';
    })
</script>