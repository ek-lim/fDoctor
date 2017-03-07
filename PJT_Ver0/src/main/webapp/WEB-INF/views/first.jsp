<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>희희</title>
</head>
<body>
<div class="banner-search">
  <div class="container"> 
    <!-- banner -->
    <h3>내 맘에 드는 병원 찾기!</h3>
    
    <div class="searchbar">
    
      <div class="row">
      <form name="frm" method="get" action="<%=request.getContextPath()%>/selectList.do">
        <div class="col-lg-8 col-sm-8">
          <input type="text" name="name" class="form-control" placeholder="병원 이름을 아신다면 입력해주세요">
          <div class="row">
            <div class="col-lg-3 col-sm-3 ">
              <select class="form-control" name="address">
              	<option value="">위치</option>
                <option value="중구">서울특별시 중구</option>
                <option value="송파구">서울특별시 송파구</option>
                <option value="부평구">인천시 부평구</option>
                <option value="수지구">용인시 수지구</option>
              </select>
            </div>
            <div class="col-lg-3 col-sm-3">
              <input name="department" class="form-control" placeholder="진료 과목"/>
            </div>
            <div class="col-lg-3 col-sm-3">
              <input type="checkbox" name="fdoctor"> 여의사
              <input type="checkbox" name="foreigner"> 외국인
            </div>
            <div class="col-lg-3 col-sm-4">
              <button class="btn btn-success" onclick="document.getElementById('frm').submit();">찾기!</button>
            </div>
          </div>
        </div>
       </form>
        <div class="col-lg-4 col-sm-2 ">
          <p>가입하시고 다녀온 병원의 후기를 남겨 보세요.</p>
          <button class="btn btn-info"   data-toggle="modal" data-target="#loginpop">Login</button>        </div>
					<div class="modal fade" id="loginpop" role="dialog">
						<div class="modal-dialog">

							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">로그인</h4>
								</div>

								<form name="loginfrm" onsubmit="return dataCheck();"
									method="get" enctype="multipart/form-data"
									action="<%=request.getContextPath()%>/login.do">
									<div class="modal-body">
										<font color=black>아이디</font> <input type="text" name="userid"><br />
										<font color=black>비밀번호</font> <input type="password"
											name="password">
									</div>

									<div class="modal-footer">
										<!-- data-dismiss="modal" -->
										<input type="submit" class="btn btn-primary"
											onclick="return doTip();" value="로그인" />
									</div>
								</form>


							</div>

						</div>
					</div>
				</div>
    </div>
  </div>
</div>
<div class="spacer">
    <div class="row">
      <div class="col-lg-5 col-lg-offset-1 col-sm-9 recent-view">
        <h3>여의사 찾기 서비스 기획 의도</h3>
        <p>헿.<br><a href="about.php">Learn More</a></p>
      
      </div>
      <div class="col-lg-5 col-lg-offset-1 col-sm-3 recommended">
        <h3>평점 높은 병원</h3>
        <div id="myCarousel" class="carousel slide">
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1" class=""></li>
            <li data-target="#myCarousel" data-slide-to="2" class=""></li>
            <li data-target="#myCarousel" data-slide-to="3" class=""></li>
          </ol>
          <!-- Carousel items -->
         
          <div class="carousel-inner">
           <div class="item active">
              <div class="row">
                <div class="col-lg-8">
                  <h5><a href="detail.do?hid=1017">맑은문피부과의원</a></h5>
                  <p class="price">서울특별시 중구 퇴계로 447</p>
                  "대기시간 없이 빠르게 진료받았어요!"<br/>
                  <a href="detail.do?hid=1017" class="more">자세히 보기</a> </div>
              </div>
            </div>
            <c:forEach var="hList" items="${list}">
            <div class="item">
              <div class="row">
                <div class="col-lg-8">
                  <h5><a href="detail.do?hid=${hList.hid }">${hList.name }</a></h5>
                  <p class="price">${hList.address }</p>
                  "${hList.review }"<br/>
                  <a href="detail.do?hid=${hList.hid }" class="more">자세히 보기</a> </div>
              </div>
            </div>
            </c:forEach>
            
          </div>
        </div>
      </div>
    </div>
  </div>

</body>
</html>