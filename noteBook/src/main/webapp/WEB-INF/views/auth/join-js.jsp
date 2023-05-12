<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>

<script type="text/javascript">
    $(document).ready(function () {

    })
    $("#schoolCheck").click(function() {
        let email = document.getElementById('emailBox');
        let univName = $("#univ").val();
        let data = {"univName":univName};

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/univ/userUniv",
            data: data,
            success: function (result) {
                console.log(result)
                if(result.success == false) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: result.message,
                        footer: '<a href="https://incredible-raincoat-c52.notion.site/cdb55dd7ea5b475eaaf94ce76fa9eba4">인증 가능한 대학 확인</a>'
                    })
                } else {
                    Swal.fire("학교 인증 완료")
                    email.style.display = 'block';
                }
            },
            error: function (e) {
                alert("관리자에게 문의하여 주십시오")
            }
        })
    });

    $("#emailCheck").click(function () {
        let univName = $("#univ").val();
        let id = $("#id").val();
        let code = document.getElementById('codeBox');

        let passEmail = document.getElementById('pass');

        let data = {"email":id, "univName":univName};

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/univ/userEmail",
            data: data,
            success: function (result) {
                if(result.success == true) {
                    console.log(result)
                    Swal.fire("이메일로 인증번호가 발송되었습니다.")
                    code.style.display = 'block';
                    passEmail.style.display = 'none';
                } else {
                    Swal.fire(
                        result.message,
                        'ex) wku.ac.kr -> wonkwang.ac.kr',
                        'question'
                    )
                    passEmail.style.display = 'block';
                }
            },
            error: function (e) {
                alert("ERROR 관리자에게 문의하여 주십시오")
            }
        })
    });
    $("#passCheck").click(function () {
        let pwd = document.getElementById('pwdBox');
        pwd.style.display = 'block';
    })

    $("#codeCheck").click(function () {
        let univName = $("#univ").val();
        let id = $("#id").val();
        let code = $("#code").val();
        let pwd = document.getElementById('pwdBox');

        let data = {"email":id, "univName":univName, "code":code};

        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/univ/userEmailCode",
            data: data,
            success: function (result) {
                Swal.fire("코드 인증완료")
                pwd.style.display = 'block';
            },
            error: function (e) {
                alert("ERROR 관리자에게 문의하십시오 :" + e)
            }
        })
    })

    $("#nickBtn").click(function () {
        let nick = $("#nick").val();
        let data = {"nick": nick};
        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: "/univ/userNick",
            data: data,
            success: function (result) {
                console.log(result)
                if(result.success == false) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Oops...',
                        text: '동일한 이름이 존재합니다.',
                    })
                } else {
                    Swal.fire("닉네임을 사용할 수 있습니다.")
                }
            },
            error: function (e) {
                alert("ERROR: "+e)
            }
        });
    })

    $("#pwdCheckBtn").click(function () {
        let firstPw = $("#fPassword").val();
        let secondPw = $("#sPassword").val();

        if(firstPw === secondPw) {
            if(secondPw != '') {
                let join = document.getElementById('joinBox');
                join.style.display = 'block';
            }
        } else {
            alert("비밀번호가 다릅니다.")
        }
    })

    $('#joinBtn').click(function() {
        let userId = $("#id").val();
        let password = $("#Password").val();
        let userName = $("#nick").val();
        let univ = $("#univ").val();

        if(userId == '') {
            alert("이메일을 입력해 주세요")
            return;
        }
        if(password == '') {
            alert("패스워드를 입력해 주세요")
            return;
        }
        if(userName == ''){
            alert("닉네입을 입력해 주세요")
            return;
        }
        if(univ == '') {
            alert("학교를 입력해 주세요")
            return;
        }

        let params = {
            'userId' : $("#id").val()
            ,'password' : $("#fPassword").val()
            ,'userName' : $("#nick").val()
            ,'univ' : $("#univ").val()
        }

        $.ajax({
            type: "POST",
            dataType : 'json',
            url: "/auth/insertUser",
            data: params,
            success: function (result) {
                console.log("SUCCESS");
            },
            error: function (e) {
                console.log("ERROR : ", e);
            }
        });
        document.location.href='/auth/login';
    })
</script>