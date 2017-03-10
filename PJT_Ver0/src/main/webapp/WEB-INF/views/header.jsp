<%@ page contentType="text/html; charset=UTF-8"%>
<% 	String l = "";
	if(session.getAttribute("id")!=null){
	l = "LOGOUT";
}; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>병원 찾긔!!</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8"/>

 	<link rel="stylesheet" href="resources/assets/bootstrap/css/bootstrap.css"/>
  <link rel="stylesheet" href="resources/assets/style.css"/>
  <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="resources/assets/bootstrap/js/bootstrap.js"></script>
  <script src="resources/assets/script.js"></script>



<!-- Owl stylesheet -->
<link rel="stylesheet" href="resources/assets/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="resources/assets/owl-carousel/owl.theme.css">
<script src="resources/assets/owl-carousel/owl.carousel.js"></script>
<!-- Owl stylesheet -->


<!-- slitslider -->
    <link rel="stylesheet" type="text/css" href="resources/assets/slitslider/css/style.css" />
    <link rel="stylesheet" type="text/css" href="resources/assets/slitslider/css/custom.css" />
    <script type="text/javascript" src="resources/assets/slitslider/js/modernizr.custom.79639.js"></script>
    <script type="text/javascript" src="resources/assets/slitslider/js/jquery.ba-cond.min.js"></script>
    <script type="text/javascript" src="resources/assets/slitslider/js/jquery.slitslider.js"></script>
<!-- slitslider -->

</head>

<body>


<!-- Header Starts -->
<div class="navbar-wrapper">

        <div class="navbar-inverse" role="navigation">
          <div class="container">
            <div class="navbar-header">


              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">뀨뀨</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>

            </div>


            <!-- Nav Starts -->
            <div class="navbar-collapse  collapse">
              <ul class="nav navbar-nav navbar-right">
               <li class="active"><a href="index.jsp">Home</a></li>
               <li><a href="sendmessage.do">제보하기</a></li>
               <li><a href="logout.do"><%=l %></a></li>
              </ul>
            </div>
            <!-- #Nav Ends -->

          </div>
        </div>

    </div>
<!-- #Header Starts -->





<div class="container">

<!-- Header Starts -->
<div class="header">
<a href="index.jsp"><img src="https://www.freelogoservices.com/api/main/ph/zjHl2lgef9cYrQL0JFa7kzbw2vuCqBdGkBvO3zp9OXdE9g5shnN1i...Bv9ettdV9dsBUGw0pY" width=100></a>

              <!-- <ul class="pull-right">
                <li><a href="buysalerent.php">Buy</a></li>
                <li><a href="buysalerent.php">Sale</a></li>         
                <li><a href="buysalerent.php">Rent</a></li>
              </ul> -->
</div>
<!-- #Header Starts -->
</div>