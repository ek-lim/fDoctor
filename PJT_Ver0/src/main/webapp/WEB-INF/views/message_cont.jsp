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
		<div class="panel panel-success">
			<div class="panel-heading"><input type="hidden" id="msg_no"value="${msgvo.message_no}"/>${msgvo.sender }님의 Message</div>
			<div class="panel-body">${msgvo.message_cont}</div>
			<div align="center"><button class="btn btn-default" onclick="location='returnList.do?msg_no=${msgvo.message_no}'">닫기</button></div>
		</div>
	</div>

</body>
</html>