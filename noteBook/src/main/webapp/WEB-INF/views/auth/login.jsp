<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<h1>LOGIN PAGE TEST</h1>
<form id="adminInfo" method="post">
    <div>
        <input type="text" placeholder="아이디를 입력해주세요">
    </div>
    <br>
    <div>
        <input type="text" placeholder="비밀번호를 입력해주세요">
    </div>
    <br>
    <div>
        <input type="text" placeholder="닉네임을 입력해주세요">
    </div>
</form>
<button id="insertLogin">
    등록
</button>