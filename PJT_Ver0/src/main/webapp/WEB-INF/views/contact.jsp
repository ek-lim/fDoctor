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


<div class="container">
<div class="spacer">
<div class="row contact">
  <div class="col-lg-6 col-sm-6 ">
  
<%-- <form name="f" method = "post" 
      action="<%=request.getContextPath() %>/sendmessage_ok.do"> --%>
      
      <form method="post" action="sendmessage_ok.do" onsubmit="return check()">
                <input type="text" class="form-control" placeholder="Name" name="sender" id="sender">
                <input type="text" class="form-control" placeholder="Title" name="message_title" id="message_title">
                <textarea rows="6" class="form-control" placeholder="Message" name="message_cont" id="message_cont"></textarea>
      <button type="submit" class="btn btn-success" name="Submit">Send Message</button>
      </form>
                          
        </div>
  <div class="col-lg-6 col-sm-6 ">
  <div class="well"><iframe width="100%" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Pulchowk,+Patan,+Central+Region,+Nepal&amp;aq=0&amp;oq=pulch&amp;sll=37.0625,-95.677068&amp;sspn=39.371738,86.572266&amp;ie=UTF8&amp;hq=&amp;hnear=Pulchowk,+Patan+Dhoka,+Patan,+Bagmati,+Central+Region,+Nepal&amp;ll=27.678236,85.316853&amp;spn=0.001347,0.002642&amp;t=m&amp;z=14&amp;output=embed"></iframe></div>
  </div>
</div>
</div>
</div>


<%@include file="footer.jsp" %>

