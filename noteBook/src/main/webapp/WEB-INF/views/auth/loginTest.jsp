<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<h1>LOGIN PAGE TEST</h1>
<form id="infoForm" enctype="multipart/form-data" method="post">
    <div>
        <input type="text" id="id" name="id" placeholder="아이디를 입력해주세요">
    </div>
    <br>
    <div>
        <input type="text" id="pwd" name="pwd" placeholder="비밀번호를 입력해주세요">
    </div>
    <br>
    <div>
        <input type="text" id="nick" name="nick" placeholder="닉네임을 입력해주세요">
    </div>
</form>
<button id="insertLogin">
    등록
</button>