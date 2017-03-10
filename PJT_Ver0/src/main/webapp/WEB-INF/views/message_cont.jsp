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
  <%  	MessageVO msgvo = new MessageVO(); %>
</head>
<body>

<!-- 쪽지 내용 -->
	<div class="container" id="msg_cont" style="display: block;">
	<form action="<%=request.getContextPath()%>/pointForm.do">
		<div class="panel panel-success">
			<div class="panel-heading">${msgvo.sender }님의 Message</div>
			<input type="hidden" name="id" value="${msgvo.sender }"/>
			<input type="hidden" id="msgno" name="msgno" value="${msgvo.message_no }">
			<div class="panel-body">${msgvo.message_cont}</div>
			<div align="center">
			<button class="btn btn-default" type="submit">포인트적립</button>
			<button class="btn btn-default" onclick="location='<%=request.getContextPath()%>/close.do'" >닫기</button>
			</div>
			
		</div>
	</form>
	</div>

</body>
</html>