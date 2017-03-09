<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@include file="header.jsp" %>

<!-- banner -->
<div class="inside-banner">
  <div class="container"> 
    <span class="pull-right"><a href="#">Home</a> / Contact Us</span>
    <h2>Contact Us</h2>
</div>
</div>
<!-- banner -->

<script>
  function data_check(){
	  var sender = document.frm.sender.value;
	  var message_title = document.frm.message_title.value;
	  var message_cont = document.frm.message_cont.value;
	  if(sender == ""){
		  alert('작성자를 입력하세요~!');
		  frm.sender.focus();
		  return false;
	  }
	  if(message_title == ""){
		  alert('제목을 입력하세요~!');
		  frm.message_title.focus();
		  return false;
	  }
	  if(message_cont == ""){
		  alert('내용을 입력하세요~!');
		  frm.message_cont.focus();
		  return false;
	  }
  }
</script>

<div class="container">
<div class="spacer">
<div class="row contact">
  <div class="col-lg-6 col-sm-6 ">
  
<%-- <form name="f" method = "post" 
      action="<%=request.getContextPath() %>/sendmessage_ok.do">  onsubmit="return data_check()"--%>
      
      <form name="frm" method="post" action="sendmessage_ok.do" onsubmit="return data_check()">
                <input type="text" class="form-control"  placeholder="작성자" name="sender" id="sender">
                <input type="text" class="form-control"  placeholder="제목" name="message_title" id="message_title">
                <textarea rows="6" class="form-control"  placeholder="내용" name="message_cont" id="message_cont"></textarea>
      <button type="submit" class="btn btn-success" name="Submit">Send Message</button>
      </form>
                          
        </div>
  <div class="col-lg-6 col-sm-6 ">
  <div class="well"><iframe width="492" height="277" src="https://www.youtube.com/embed/tU3k8aEhCuc" frameborder="0" allowfullscreen></iframe>"></div>
  </div>
</div>
</div>
</div>

