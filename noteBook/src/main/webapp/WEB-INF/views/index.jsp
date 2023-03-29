<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<ul>
  <li>Login Page</li>
  <input type="button" value="login page" onclick="location.href='login.jsp'"/>
</ul>

<div>
  <form method="post" enctype="multipart/form-data">
    <input name="uploadFiles" type="file" multiple>
    <button type="button" class="uploadBtn" id="uploadBtn">Upload</button>
  </form>
</div>