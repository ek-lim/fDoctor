<%@page import="com.fdoctor.vo.MemberVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Point Form</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="resources/js/jquery.js"></script>
<%@page import="com.fdoctor.vo.MessageVO"%>
<%@page import="com.fdoctor.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("id");
%>
</head>
<body>
<div class="container" id="msg_cont" style="display: block;">
<form method="post" action="<%=request.getContextPath() %>/point.do">
	<div class="panel panel-success">
	<div class="panel panel-heading" style="font-size: 40">${id }</div>
	<div class="panel-body">
	<input type="hidden" id="id" name="id" value="${id}" />
	<input type="hidden" id="point" name="point" value="${point}" />
	<input type="hidden" id="msgno" name="msgno" value="${msgno}">
	${id } 님의 현재 Point는 ${point } 점입니다.<br>
	<button class="btn btn-default" style="display: cener;" type="submit">50점 적립</button>
	<button class="btn btn-default" style="display: cener;" type="reset" onclick="location='close.do'">Return</button>
	</div>
	</div>
</form>
</div>
</body>
</html>