<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<script type="text/javascript">
    $(document).ready(function () {

    })
    $("#schoolCheck").click(function() {
        let univName = $("#univ").val();
        let data = {"univName":univName};

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/auth/userJoin",
            data: data,
            success: function (result) {
                console.log("등록완료");
            },
            error: function(e) {
                console.log('ERROR : ', e);
            }
        });
    });

    $("#emailCheck").click(function () {
        let id = $("#id").val();
        let data = {"email":id};

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/auth/userJoin",
            data: data,
            success: function (result) {
                console.log("등록완료");
            },
            error: function (e) {
                console.log('ERROR : ', e);
            }
        });
    });

    $("#codeCheck").click(function () {
        let code = $("#code").val();
        let data = {"code":code};

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/auth/userJoin",
            data: data,
            success: function (result) {
                console.log("코드 인증 완료")
            },
            error: function (e) {
                console.log('ERROR : ', e);
            }
        })
    })

    $("#nickBtn").click(function () {
        let nick = $("#nick").val();
        let data = {"nick": nick};

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/auth/userJoin",
            data: data,
            success: function (result) {
                console.log("닉네임 사용 가능")
            },
            error: function (e) {
                console.log("ERROR : ", e);
            }
        })
    })

    $("#pwdCheckBtn").click(function () {
        let firstPw = $("#fPassword").val();
        let secondPw = $("#sPassword").val();

        if(firstPw === secondPw) {
            let data = {"firstPw": firstPw};
            $.ajax({
                type: "POST",
                enctype: 'multipart/form-data',
                url: "/auth/userJoin",
                data: data,
                success: function (result) {
                    console.log("닉네임 사용 가능")
                },
                error: function (e) {
                    console.log("ERROR : ", e);
                }
            })
            $('#pwdCheckBtn').click(function() {
                let join = document.getElementById('joinBox');
                join.style.display = 'block';
            })
        } else {
            console.log('ERROR')
        }
    })

    function test() {
        let login = document.getElementById("login");
        let join = document.getElementById("join");

        login.css('display','none')
    }

    $('#schoolCheck').click(function(){
        let email = document.getElementById('emailBox');
        email.style.display = 'block';
    })

    $('#emailCheck').click(function() {
        let code = document.getElementById('codeBox');
        code.style.display = 'block';
    })

    $('#codeCheck').click(function() {
        let pwd = document.getElementById('pwdBox');
        pwd.style.display = 'block';
    })

    $('#joinBtn').click(function() {
        document.location.href='index.html';
    })

</script>