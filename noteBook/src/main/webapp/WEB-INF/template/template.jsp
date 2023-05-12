<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html lang="ko">
    <head>
<%--        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
        <tiles:insertAttribute name="meta"/>
        <tiles:insertAttribute name="styles"/>
        <tiles:insertAttribute name="scripts"/>

    <link href="https://github.com/KyungHoAn/NoteBookPJT/blob/master/Image/logo2.png" rel="icon">
    </head>
    <body>
        <tiles:insertAttribute name="contents" ignore="true"/>
        <tiles:insertAttribute name="contents-js" ignore="true"/>
    </body>
</html>