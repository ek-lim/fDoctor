<%@page import="com.fdoctor.vo.MessageVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Page</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="resources/js/jquery.js"></script>
  <script type="text/javascript">
	
  function msg_contView(){
	  var obj=document.getElementById("msg_cont");
	  var obj2=document.getElementById("read_check");
	  if(obj.style.display=="none"){
		  obj.style.display="block";
	  }
	}
   function msg_close(){
	   var obj=document.getElementById("msg_cont");
	   obj.style.display = "none";
   }
  </script>
  <%
  	MessageVO msgvo = new MessageVO();
  %>
</head>
<body>
<!-- 쪽지목록 -->
	<div class="container">
		<h2>Message</h2>
			<table class="table table-hover" id=message_T>
				<tr>
					<th>선택</th>
					<th>No</th>
					<th>Subject</th>
					<th>Sender</th>
					<th>Date</th>
					<th id="read">Check</th>
				</tr>
				<c:forEach var="mList" items="${msg_list}">
				<tr>
					<td><input type="checkbox" id="ch_no"/><div style="display: none">${mList.message_no }</div></td>
					<td id="no">${mList.message_no }</td>
					<td id="subject"><a onclick="msg_contView()" href="<%=request.getContextPath() %>/msg_cont.do?message_no=${mList.message_no}">${mList.message_title }</a></td>
					<td id="sender">${mList.sender }</td>
					<td id="date">${mList.message_date }</td>
					<td id="msgck">${mList.message_ck }</td>
				</tr>
				</c:forEach>
				<tr>
					<td align="right">
						<div class="dropdown">
							<button class="btn btn-default dropdown-toggle" type="button"
								id="menu1" data-toggle="dropdown">
								조회 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="<%=request.getContextPath()%>read_ck">읽음</a></li>
								<li role="presentation" class="divider"></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="<%=request.getContextPath()%>read_ck">안읽음</a></li>
							</ul>
						</div>
					</td>
					<td colspan="6" align="left">
					<input type="button" class="btn btn-default" value="포인트적립" onclick="location='update_m.do?ch_no=${mList.Sender}'"> 
					<input type="button" class="btn btn-default" value="삭제" onclick="location='delete_m.do'"></td>
				</tr>
		</table>
<br><br><br>
<!-- 후기목록 -->
	<div class="container">
		<h2>Review</h2>
		<form action="">
			<table class="table table-hover">
				<tr>
					<th>No</th>
					<th>Hospital</th>
					<th>Subject</th>
					<th>Id</th>
					<th>Date</th>
				</tr>
				<c:forEach var="List" items="list">
				<tr> 
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				</c:forEach>
			</table>
		</form>
	</div>	
<br><br><br>
<!-- 회원목록 -->
	<div class="container">
		<h2>Member</h2>
		<table class="table table-hover">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Password</th>
				<th>Point</th>
			</tr>
			<c:forEach var="mList" items="${list}">
				<tr>
					<td>${mList.user_id}</td>
					<td>${mList.user_name }</td>
					<td>${mList.user_pwd }</td>
					<td>${mList.user_point }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>