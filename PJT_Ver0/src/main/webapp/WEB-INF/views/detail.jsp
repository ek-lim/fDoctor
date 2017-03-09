<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<%@page import="com.fdoctor.vo.HospitalVO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<script src="http://code.jquery.com/jquery-1.12.1.js"></script> 
<script src="resource/js/ajax.js"></script>
<script>
  function data_check(){
	  var sender = document.frm.sender.value;
	  var message_title = document.frm.message_title.value;
	  var message_cont = document.frm.message_cont.value;
	  if(sender == ""){
		  alert('작성자를 입력하세요~!');
		  frm.sender.focus();
		  return false;
	  }
	  if(message_title == ""){
		  alert('제목을 입력하세요~!');
		  frm.message_title.focus();
		  return false;
	  }
	  if(message_cont == ""){
		  alert('내용을 입력하세요~!');
		  frm.message_cont.focus();
		  return false;
	  }
  }
</script>
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
    <span class="pull-right"><a href="#">Home</a> / 병원 정보 보기</span>
    <h2>자세한 병원 정보를 확인하세요!</h2>
</div>
</div>
<!-- banner -->


<div class="container">
<div class="properties-listing spacer">

<div class="row">
<div class="col-lg-3 col-sm-4 hidden-xs">

<div class="hot-properties hidden-xs">
<h4>이 병원 근처에는..</h4>
<c:forEach var="dList" items="${distlist }">
<div class="row">
                <div class="col-lg-11 col-sm-8">
                  <h5><a href="detail.do?hid=${dList.hid }">${dList.name }</a></h5>
                  <p class="price">${dList.address }</p> </div>
              </div>
</c:forEach>

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
		<p>${vo.review }</p>
		<!-- 다영씨 part start -->
		<%-- <c:forEach var="uList" items="${reviewlist}">
									<tr>
										<td align="center">${uList.name}</td>
										<td align="center">${uList.review}</td>
										<td align="center">${uList.reg_date}</td> 
									</tr>
								</c:forEach>
		<div id="uList_menu">
		<form action="review.do" method="get">
			<table border="1">	
				<tr>
					<td>작성자:<input name="name"/></td>			
					<td>후기: <input name="review"/>
					<input type="hidden" name="hid" value="${vo.hid }"/></td>
					
					<td align="center"><input type="submit" value="작성"/>
					<input type="reset" value="취소"/></td>
				</tr>
			
			</table>
		
		</form> --%>
		<%-- <div id="uList_wrap">
							<h2 class="uList_title">후기목록</h2>
							<table id="uList_t">
								<tr>
									<th class="name">작성자</th>
									<th class="review">후기</th>
									<th class="reg_date">날짜</th>
								</tr>
								<c:forEach var="uList" items="${reviewlist}">
									<tr>
										<td align="center">${uList.name}</td>
										<td align="center">${uList.review}</td>
										<td align="center">${uList.reg_date}</td> 
									</tr>
								</c:forEach>
							</table>
<!-- 							<div id="uList_menu">
								<input type="button" value="후기남기기" class="input_b"
									onclick="location='review.do'" />-->
	</div>
	<div id="uList_wrap" align="center">
		<form action="review.do" method="get">
			<table border="1">	
				<tr>
					<td>작성자:<input name="name"/></td>			
					<td>후기: <input name="review"/></td>
					<td align="center"><input type="submit" value="작성"/>
					<input type="reset" value="취소"/></td>
				</tr>
			
			</table>
		
		</form>
	--%><!-- 다영씨 part end -->
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
  <form name="frm" method="post" action="sendmessage_ok.do" onsubmit="return data_check()">
                <input type="text" class="form-control"  placeholder="작성자" name="sender" id="sender">
                <input type="text" class="form-control"  placeholder="제목" name="message_title" id="message_title">
                <textarea rows="6" class="form-control" placeholder="수정할 정보가 있으신가요?" name="message_cont" id="message_cont"></textarea>
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
</html> <%-- 
<%@include file="footer.jsp" %> --%>