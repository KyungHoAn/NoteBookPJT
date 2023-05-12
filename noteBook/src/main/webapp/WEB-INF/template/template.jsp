<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html lang="ko">
    <head>
<%--        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
        <tiles:insertAttribute name="meta"/>
        <tiles:insertAttribute name="styles"/>
        <tiles:insertAttribute name="scripts"/>
<%--    <link rel="shortcut icon" type="image/x-icon" href="https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Apple_logo_black.svg/800px-Apple_logo_black.svg.png">--%>
<%--    <link rel="shortcut icon" type="image/x-icon" href="https://github.com/KyungHoAn/NoteBookPJT/blob/master/Image/logo2.png">--%>
<%--        <tiles:insertAttribute name="contents-js" flush="true"/>--%>
    <link href="https://github.com/KyungHoAn/NoteBookPJT/blob/master/Image/logo2.png" rel="icon">
    </head>
    <body>
        <tiles:insertAttribute name="contents" ignore="true"/>
        <tiles:insertAttribute name="contents-js" ignore="true"/>
    </body>
</html>