<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@page import="com.fdoctor.vo.HospitalVO" %>
<%
	HospitalVO vo = (HospitalVO)request.getAttribute("vo");
	String fItda = "없음"; String wItda = "없음";
	if(vo.getFdoctor()==1)
		fItda = "있음";
	if(vo.getForeigner()==1)
		wItda = "있음";
%>
<script src="resource/js/map.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAePEIkk69EZn_HisDjO2iuDzYXWBVLkAg "
type="text/javascript"></script>
<script> 
  window.onload=function initialize(){ 
  var myLatlng = new google.maps.LatLng(${vo.gyungdo}, ${vo.wido});
  var mapOptions = { 
        zoom: 15, 
        center: myLatlng, 
        mapTypeId: google.maps.MapTypeId.ROADMAP 
  } 
 
  var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
  var marker = new google.maps.Marker({ 
            position: myLatlng, 
            map: map
  }); 
  var infowindow = new google.maps.InfoWindow( 
          { 
            content: "<h1>${vo.name}</h1>", 
            maxWidth: 300 
          } 
  ); 

  google.maps.event.addListener(marker, 'click', function() { 
  infowindow.open(map, marker); 
  }); 
  }
</script> 
<!-- banner -->
<div class="inside-banner">
  <div class="container"> 
    <span class="pull-right"><a href="#">Home</a> / Buy</span>
    <h2>Buy</h2>
</div>
</div>
<!-- banner -->


<div class="container">
<div class="properties-listing spacer">

<div class="row">
<div class="col-lg-3 col-sm-4 hidden-xs">

<div class="hot-properties hidden-xs">
<h4>Hot Properties</h4>
<div class="row">
                <div class="col-lg-4 col-sm-5"><img src="images/properties/4.jpg" class="img-responsive img-circle" alt="properties"/></div>
                <div class="col-lg-8 col-sm-7">
                  <h5><a href="property-detail.php">Integer sed porta quam</a></h5>
                  <p class="price">$300,000</p> </div>
              </div>
<div class="row">
                <div class="col-lg-4 col-sm-5"><img src="images/properties/1.jpg" class="img-responsive img-circle" alt="properties"/></div>
                <div class="col-lg-8 col-sm-7">
                  <h5><a href="property-detail.php">Integer sed porta quam</a></h5>
                  <p class="price">$300,000</p> </div>
              </div>

<div class="row">
                <div class="col-lg-4 col-sm-5"><img src="images/properties/3.jpg" class="img-responsive img-circle" alt="properties"/></div>
                <div class="col-lg-8 col-sm-7">
                  <h5><a href="property-detail.php">Integer sed porta quam</a></h5>
                  <p class="price">$300,000</p> </div>
              </div>

<div class="row">
                <div class="col-lg-4 col-sm-5"><img src="images/properties/2.jpg" class="img-responsive img-circle" alt="properties"/></div>
                <div class="col-lg-8 col-sm-7">
                  <h5><a href="property-detail.php">Integer sed porta quam</a></h5>
                  <p class="price">$300,000</p> </div>
              </div>

</div>



<div class="advertisement">
  <h4>Advertisements</h4>
  <img src="images/advertisements.jpg" class="img-responsive" alt="advertisement">

</div>

</div>

<div class="col-lg-9 col-sm-8 ">

<h2>${vo.name }</h2>
<div class="row">
<div class="col-lg-8">
	<div class="spacer">
		<h4>
			<span class="glyphicon glyphicon-th-list"></span> 기본 정보
		</h4>
		<font size=3>여의사 <%=fItda%>, 외국인 진료 가능 의사 <%=wItda%></font><br />
		<p>
			진료 시간(주중) : ${vo.timewday}<br /> 진료 시간(주말) : ${vo.timewend }<br/>
			진료 과목 : ${vo.department }
			</p>
			<p></p>
		</div>
		<div>
			<h4>
				<span class="glyphicon glyphicon-map-marker"></span> 위치
			</h4>
			<div class="well">
				<div id="map_canvas" style="width:100%; height:350px;"></div>
			</div>
			
		</div>	
		<h4>
			<span class="glyphicon glyphicon-th-list"></span> 후기
		</h4>
	</div>
  <div class="col-lg-4">
  <div class="col-lg-12  col-sm-6">
<div class="property-info">
<p class="price">누적 평점 : ${vo.score }점</p>
  <p class="area"><span class="glyphicon glyphicon-map-marker"></span>${vo.address }</p>
  
  <div class="profile">
  <span class="glyphicon glyphicon-user"></span> 대표의사 정보
  <p>준비중입니다.</p>
  </div>
</div>
<div class="col-lg-12 col-sm-6 ">
<div class="enquiry">
  <h6><span class="glyphicon glyphicon-envelope"></span>잘못된 정보 제보하기</h6>
  <form role="form">
                <input type="text" class="form-control" placeholder="이름"/>
                <input type="text" class="form-control" placeholder="you@yourdomain.com"/>
                <textarea rows="6" class="form-control" placeholder="수정할 정보가 있으신가요?"></textarea>
      <button type="submit" class="btn btn-primary" name="Submit">보내기</button>
      </form>
 </div>
</div>
  </div>
</div>
</div>
</div>
</div>
</div>


</div>
</body>
</html> 
<%@include file="footer.jsp" %>