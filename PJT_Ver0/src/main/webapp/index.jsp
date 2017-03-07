<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@include file="WEB-INF/views/headeri.jsp" %>
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
    <h3>내 맘에 드는 <a href="<%=request.getContextPath()%>/selectList.do">병원</a> 찾기!</h3>
    
    <div class="searchbar">
      <div class="row">
      <form name="frm" method="get" action="<%=request.getContextPath()%>/selectList.do">
        <div class="col-lg-8 col-sm-8">
          <!-- <input type="text" class="form-control" placeholder="Search of Properties"> -->
          <div class="row">
            <div class="col-lg-3 col-sm-3 ">
              <select class="form-control" name="address">
              	<option value="*">위치</option>
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
              <input type="checkbox" name="fdoctor" checked="1"> 여의사
              <input type="checkbox" name="foreigner" checked="1"> 외국인
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

								<form name="loginfrm" onsubmit="return dataCheck();" method="post"
									enctype="multipart/form-data" action="/login.do">
									<div class="modal-body">
										<font color=black>아이디</font> <input name="userid"><br/>
										<font color=black>비밀번호</font> <input type="password" name="password">
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

<table width="800" border="1" align="center">
  <tr>
     <td colspan="2"  align="center"> <h2> Spring Project Test </h2> </td>
  </tr>
  <tr>
     <td width="25%"> 
        <a href="<%=request.getContextPath()%>/selectAll.do"><h3> 전체 레코드 검색 </h3></a>
        <a href="<%=request.getContextPath()%>/selectOne.do"><h3> 조건 검색 </h3></a>
        
        
        <%-- <a href="<%=request.getContextPath()%>/insert.do"><h3> 레코드 삽입 </h3></a>
        <a href="<%=request.getContextPath()%>/uploadForm.do"><h3> 파일업로드 </h3></a> --%>
      </td>  
       <td align="center"> <h1> 결과화면 </h1></td>
  </tr>
  <tr>
     <td colspan="2" align="center">
         <h2> Since 2015, Copy right by Admin </h2>
     </td>
  </tr>
</table>
</body>
</html>