<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/template/constants.jsp"%>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${key}">
</script>
<script type="text/javascript">
    $(document).ready(function () {

        let container = document.getElementById('map');
        let options = {
            center: new kakao.maps.LatLng(35.96859679309435, 126.95819263729814),
            level: 3
        };

        let map = new kakao.maps.Map(container, options);
    });
</script>
