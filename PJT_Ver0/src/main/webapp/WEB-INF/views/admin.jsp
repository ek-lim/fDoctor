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
  </script>
  <%  	MessageVO msgvo = new MessageVO(); %>
</head>
<body>
<!-- 쪽지목록 -->
	<div class="container">
		<h2>Message</h2>
		<form>
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
						<td><input type="checkbox" name="msgno" id="ckbox"
							value="${mList.message_no }" /></td>
						<td id="no">${mList.message_no }</td>
						<td id="subject"><a
							href="<%=request.getContextPath() %>/msg_cont.do?message_no=${mList.message_no}">${mList.message_title }</a></td>
						<td id="sender">${mList.sender }</td>
						<td id="date">${mList.message_date }</td>
						<td id="msgck">${mList.message_ck }</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="7" align="center">
					<%-- <select>
							<option value="조회">조회</option>
							<option href="<%=request.getContextPath()%>/read_ck.do" value="1">읽음</option>
							<option href="<%=request.getContextPath()%>/read_ck.do" value="2">안읽음</option>
					</select> <input type="button" class="btn btn-default" value="삭제"
						onclick="location='delete_m.do'"> --%></td>
				</tr>
			</table>
		</form>
	</div>
	<br><br><br>
<!-- 후기목록 -->
	<div class="container">
		<h2>Review</h2>
		<form action="">
			<table class="table table-hover">
			
				<tr>
					<th>name</th>
					<th>Contents</th>
					<th>Date</th>
				</tr>
				<c:forEach var="rList" items="${rlist}">
				<tr> 
					<td>${rList.name }</td>
					<td>${rList.review }</td>
					<td>${rList.reg_date }</td>
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