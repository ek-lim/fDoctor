<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/include/header.jsp" %>

<h1>쪽지 보내기</h1>
<form name="f" method="post" action="sendmessage_ok.do" 
onsubmit="return check()" >

<table>
	<tr>
		<th>글제목</th>
		<td><input type="text" name="message_title" id="message_title"></td>
	</tr>
	<tr>
		<th>작성자</th>
		<td><input type="text" name="sender" id="sender"></td>
	</tr>	
	<tr>
		<th>쪽지내용</th>
		<td><textarea rows="8" cols="40" name ="message_cont" id ="message_cont"></textarea></td>
	</tr>	

</table>
<hr>

<div align="center">
   <input type="submit" value="send" class="boardwrite_b"/>
   <input type="reset" value="cancel" 
              onclick="window.close()"/>
              <!-- history.back() -->
</div>
</form>


<%@ include file="/resources/include/footer.jsp" %>