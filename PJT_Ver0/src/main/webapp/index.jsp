<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Refresh" content="1; URL=<%=request.getContextPath() %>/first.do" content="text/html; charset=UTF-8">
<title>URL=<%=request.getContextPath() %>/first.do</title>

</head>
<body>

<!-- <script type="text/javascript">
  window.onload=function(){
    //위치정보를 확인할 수 있는 브라우저인지 확인
    if(navigator.geolocation == undefined){
        alert("위치 정보 기능을 지원하지 않습니다!")
        return;
    }
 }
 
 //현재 위치 정보 알아보는 메소드
 function showData(){
    navigator.geolocation.getCurrentPosition(success, fail); //현재 위치 정보를 조사하고 성공 실패 했을시 호출되는 함수 설정
 }
 
 function success(position) { //성공시
    log("위치정보 확인 성공!");
    for(var property in position.coords) { //반복문 돌면서 출력
        log("Key 값:"+property+" 정보:"+position.coords[property]);
    }
    var lat=position.coords["latitude"];
    var lon=position.coords["longitude"];
    var url="http://maps.googleapis.com/maps/api/geocode/json?latlng="+lat+","+lon+"&sensor=false";
     //location.href = url;//페이지 이동하기
 }
 
 //실패시
 function fail(err){
    switch (err.code){
        case err.PERMISSION_DENIED:
            msg = "사용자 거부";
        break;
 
        case err.PERMISSION_UNAVAILABLE:
            msg = "지리정보를 얻을 수 없음";
        break;
 
        case err.TIMEOUT:
            msg = "시간초과";
        break;
 
        case err.UNKNOWN_ERROR:
            msg = "알 수 없는 오류 발생";
        break;
    }
        log(msg);
 }
  
 function log(msg){
    var console = document.getElementById("console");
    console.innerHTML += msg+"<br/>";
 }
</script>
 
 <button onclick="showData()">현재 위치 확인</button>
 
<div id="console" style="width:500px; border:5px; font-size:20px"></div> -->

</body>
</html>