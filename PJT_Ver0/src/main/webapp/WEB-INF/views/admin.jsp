<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Page</title>
</head>
<%@ include file="/resources/include/header.jsp" %>
<body>
<!-- 쪽지목록 -->
	<div>
		<h2>쪽지</h2>
			<table border="1">
				<tr>
					<th>선택</th>
					<th>No</th>
					<th>Subject</th>
					<th>Sender</th>
					<th>Date</th>
					<th id="read">Check</th>
					<th>Point</th>
				</tr>
				<c:forEach var="msgList" items="${msglist}">
				<tr>
					<td><input type="checkbox"/></td>
					<td id="no"></td>
					<td id="subject"></td>
					<td id="Sender"></td>
					<td id="Date"></td>
					<td id="read_check"></td>
					<td id="point"></td>
				</tr>
				</c:forEach>
				<tr>
					<td colspan="7">
					<select id="조회"><option>읽음</option><option>안읽음</option></select>
					<input type="button" value="포인트적립" onclick="location='update_m.do'">
					<input type="button" value="삭제" onclick="location='delete_m.do'"></td>
				</tr>
			</table>
	</div>
	<br><br><br>
<!-- 후기목록 -->
	<div>
		<h2>후기</h2>
		<form action="">
			<table border="1">
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
	<div>
			<table border="1">
				<tr>
					<th>ID</th> <th>Name</th> <th>Password</th> <th>Point</th>
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