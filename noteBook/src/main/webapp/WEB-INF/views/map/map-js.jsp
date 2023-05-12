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

        // 마커가 표시될 위치입니다
        var markerPosition  = new kakao.maps.LatLng(35.96859679309435, 126.95819263729814);

        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            position: markerPosition
        });

        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);

        // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
        // marker.setMap(null);

        // 지도에 클릭 이벤트를 등록합니다
        // 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
        kakao.maps.event.addListener(map, 'click', function(mouseEvent) {

            // 클릭한 위도, 경도 정보를 가져옵니다
            let latlng = mouseEvent.latLng;

            // 마커 위치를 클릭한 위치로 옮깁니다
            marker.setPosition(latlng);

            // 마우스로 클릭한 위치의 위도와 경도를 표시할 메세지
            let message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
            message += '경도는 ' + latlng.getLng() + ' 입니다';

            // 'clickLatlng'라는 아이디값을 가진 <div> 태그의 innerHTML 으로 위 메세지를 설정합니다.
            let resultDiv = document.getElementById('clickLatlng');
            resultDiv.innerHTML = message;
        });

    });
</script>
