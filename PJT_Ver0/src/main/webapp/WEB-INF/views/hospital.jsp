<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="header.jsp" %>
<%
	
%>
<!-- banner -->
<div class="inside-banner">
  <div class="container"> 
    <span class="pull-right"><a href="index.php">Home</a>/ 병원 목록 찾기</span>
    <h2>내가 찾는 병원은 여기에 있었다!</h2>
</div>
</div>
<!-- banner -->
<div class="container">
<div class="properties-listing spacer">

<div class="row">
<div class="col-lg-3 col-sm-4 ">
<form name="frm" method="get" action="<%=request.getContextPath()%>/selectList.do">
  <div class="search-form"><h4><span class="glyphicon glyphicon-search"></span> Search for</h4>
    <input type="text" name="name" class="form-control" placeholder="병원 이름을 아신다면 입력해주세요">
    <div class="row">
            <div class="col-lg-5">
              <input type="checkbox" name="fdoctor"> 여의사
            </div>
            <div class="col-lg-7">
              <input type="checkbox" name="foreigner"> 외국인<br/>
              <input name="department" type="hidden"/>
            </div>
          </div>
          <div class="row">
          <div class="col-lg-12">
              <select class="form-control" name="address">
              	<option value="">위치</option>
                <option value="중구">서울특별시 중구</option>
                <option value="송파구">서울특별시 송파구</option>
                <option value="부평구">인천시 부평구</option>
                <option value="수지구">용인시 수지구</option>
                <option value="노원구">서울시 노원구</option>
              </select>
              </div>
          </div>
          <button class="btn btn-success" onclick="document.getElementById('frm').submit();">병원 검색</button>

  </div>
</form>


<div class="hot-properties hidden-xs">
<!-- <h4>Hot Properties</h4>
<div class="row">
                <div class="col-lg-4 col-sm-5"><img src="images/properties/1.jpg" class="img-responsive img-circle" alt="properties"></div>
                <div class="col-lg-8 col-sm-7">
                  <h5><a href="property-detail.php">Integer sed porta quam</a></h5>
                  <p class="price">$300,000</p> </div>
              </div>
<div class="row">
                <div class="col-lg-4 col-sm-5"><img src="images/properties/1.jpg" class="img-responsive img-circle" alt="properties"></div>
                <div class="col-lg-8 col-sm-7">
                  <h5><a href="property-detail.php">Integer sed porta quam</a></h5>
                  <p class="price">$300,000</p> </div>
              </div>

<div class="row">
                <div class="col-lg-4 col-sm-5"><img src="images/properties/1.jpg" class="img-responsive img-circle" alt="properties"></div>
                <div class="col-lg-8 col-sm-7">
                  <h5><a href="property-detail.php">Integer sed porta quam</a></h5>
                  <p class="price">$300,000</p> </div>
              </div>

<div class="row">
                <div class="col-lg-4 col-sm-5"><img src="images/properties/1.jpg" class="img-responsive img-circle" alt="properties"></div>
                <div class="col-lg-8 col-sm-7">
                  <h5><a href="property-detail.php">Integer sed porta quam</a></h5>
                  <p class="price">$300,000</p> </div>
              </div>-->

</div> 


</div>

<div class="col-lg-9 col-sm-8">
<div class="sortby clearfix">
<div class="pull-left result"><!-- 목록 몇개인지 보여주는 곳 --></div>
  <div class="pull-right">
  <!-- <select class="form-control">
  <option>Sort by</option>
  <option>Price: Low to High</option>
  <option>Price: High to Low</option>
</select> --></div>

</div>
<div class="row">
	<c:forEach var="hList" items="${list}">
      <!-- properties -->
      <div class="col-lg-4 col-sm-6">
      <div class="properties" style="overflow-x:hidden;overflow-y:hidden">
        <h4><a href="detail.do?hid=${hList.hid }">${hList.name}</a></h4>
        <p class="price">${hList.address}
        <p>${hList.timewday}
        <p>${hList.department}
        <p>${hList.phone}
        <!-- <div class="listing-detail"><span data-toggle="tooltip" data-placement="bottom" data-original-title="Bed Room">5</span> <span data-toggle="tooltip" data-placement="bottom" data-original-title="Living Room">2</span> <span data-toggle="tooltip" data-placement="bottom" data-original-title="Parking">2</span> <span data-toggle="tooltip" data-placement="bottom" data-original-title="Kitchen">1</span> </div> -->
        <a class="btn btn-primary" href="detail.do?hid=${hList.hid }">자세히 보기</a>
      </div>
      </div>
      <!-- properties -->
      </c:forEach>    
      
     <hr>
      <div class="center">
<!-- <ul class="pagination">
          <li><a href="#">«</a></li>
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">4</a></li>
          <li><a href="#">5</a></li>
          <li><a href="#">»</a></li>
        </ul> -->
</div>

</div>
</div>
</div>
</div>
</div>

<%-- 
<%@ include file="/resources/include/footer.jsp" %>
 --%>