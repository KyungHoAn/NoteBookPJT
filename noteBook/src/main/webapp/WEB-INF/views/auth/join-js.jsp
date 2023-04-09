<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<script type="text/javascript">
    $(document).ready(function () {

    })
    $("#schoolCheck").click(function() {
        let univName = $("#univ").val();
        let data = {"univName":univName};
        userJoin(data);
    });

    $("#emailCheck").click(function () {
        let id = $("#id").val();
        let data = {"email":id};

        userJoin(data);
    });

    $("#codeCheck").click(function () {
        let code = $("#code").val();
        let data = {"code":code};
        userJoin(data);
    })

    $("#nickBtn").click(function () {
        let nick = $("#nick").val();
        let data = {"nick": nick};
        userJoin(data);
    })

    $("#pwdCheckBtn").click(function () {
        let firstPw = $("#fPassword").val();
        let secondPw = $("#sPassword").val();

        if(firstPw === secondPw) {
            let data = {"firstPw": firstPw};
            userJoin(data);

            let join = document.getElementById('joinBox');
            join.style.display = 'block';
        } else {
            console.log('ERROR')
        }
    })

    function userJoin(data) {
        console.log(data)
        // $.ajax({
        //     type: "POST",
        //     enctype: 'multipart/form-data',
        //     url: "/auth/userJoin",
        //     data: data,
        //     success: function (result) {
        //         console.log("SUCCESS");
        //     },
        //     error: function (e) {
        //         console.log("ERROR : ", e);
        //     }
        // })
    }

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
        let form = $('#adminInfo')[0];
        let data = new FormData(form);

        console.log(data);
        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/auth/userJoin",
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
        })
        // document.location.href='index.html';
    })

</script>