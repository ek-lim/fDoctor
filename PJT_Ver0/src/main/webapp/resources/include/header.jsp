<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/test.css" type="text/css">
<script src="resources/js/jquery.js"></script>
<script src="resources/js/test.js"></script>
</head>
<body>
<table width="800" border="1"  align="center">
  <tr>
     <td colspan="2"  align="center"> <h2> Spring Project Test </h2> </td>
  </tr>
  <tr>
     <td width="25%"> 
        <a href="<%=request.getContextPath()%>/selectAll.do"><h3> 전체 레코드 검색 </h3></a>
        <a href="<%=request.getContextPath()%>/selectOne.do"><h3> 조건 검색 </h3></a>
        <a href="<%=request.getContextPath()%>/insert.do"><h3> 레코드 삽입 </h3></a>
        <a href="<%=request.getContextPath()%>/uploadForm.do"><h3> 파일업로드 </h3></a>
      </td>  
       <td align="center">