<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html class="no-js" lang="">
<head>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>OPAL :: 회원 정보 확인</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="resources/images/Opal.png">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/flexslider.css">
<link rel="stylesheet" href="resources/css/jquery.fancybox.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/responsive.css">
<link rel="stylesheet" href="resources/css/animate.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/opalproject/resources/ourcss/modify.css">
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#nav ul#sub-menu").hide();
		$("#nav ul#main-menu li").click(function() {
			$("ul", this).slideToggle("fast");
		});
	});
</script>
</head>
<body>
	<section class="banner" role="banner">
		<header id="header">
		<div id="nav" class="header-content clearfix">
		<a class="logo" href="/opalproject/index">
				   <img src="resources/images/Opal.png" width="100" alt=""></a>
		<nav class="navigation" role="navigation">	
			<ul id = "main-menu" class="primary-nav">
			  <li><a href="/opalproject/about">오팔이란</a></li>
			  <li><a href="/opalproject/team">팀소개</a></li>
			  <!-- 로그인중이 아닐 때에만 Login 버튼이 보임  -> taglib ( security/tags ) 때문에 가능 -->
			<sec:authorize access="isAnonymous()">
			  <li><a href='${pageContext.request.contextPath}/signin'>로그인</a></li>
			  <li><a href="/opalproject/signup">회원가입</a></li>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
			  <li><a href="#">회원정보</a>
			     <ul id="sub-menu">
			        <li><a href="/opalproject/meminfomodify">회원정보 수정</a></li>
			        <li><a href="/opalproject/cart/list">장바구니</a></li>
			     </ul>
			  <li><form action="${pageContext.request.contextPath}/logout" method="POST">
				  <input id="logoutBtn" class="logout_button" type="submit" value="로그아웃" />
				  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				  </form></li>
			</sec:authorize>
			</ul>
			</nav>
			<a href="#" class="nav-toggle">Menu<span></span></a>
		</div>
			<!-- header content -->
		</header>
		<!-- header -->
		<div class="container">
			<div class="col-md-10 col-md-offset-1">
				<div class="banner-text text-center">
					<p>movie here</p>
				</div>
				<!-- banner text -->
			</div>
		</div>
	</section>
	<!-- banner -->

<%String msg = (String)request.getAttribute("msg");%>

<div class="modify">
<form method="POST" action="/opalproject/mypage">

<div class="checkpwd">
<div class="checkpwd_board">
<h3>비밀번호 재확인</h3>
<%if(msg!=null){%><h5><%=msg%></h5><%}else{ %>
<h5>안전한 사용을 위해 비밀번호를 다시 한 번 입력해주세요.</h5><%} %>

<label for="checkPassword">
<input type="password" id="checkPassword" name="cust_pw" placeholder="패스워드 입력">
</label>
<input class="checkpwd_sumit" type="submit" value="확인">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">

</div>
</div>
</form>
</div>

	<footer class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="footer-col col-md-4"></div>
					<div class="footer-col col-md-4">
						<img src="resources/images/Opal.png" width="150" alt="">
						<h5>with Health</h5>
					</div>
					<div class="footer-col col-md-4"></div>
				</div>
			</div>
		</div>
	</footer>
	<!-- footer -->

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="resources/js/jquery.min.js"><\/script>')
	</script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.flexslider-min.js"></script>
	<script src="resources/js/jquery.fancybox.pack.js"></script>
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<script src="resources/js/retina.min.js"></script>
	<script src="resources/js/modernizr.js"></script>
	<script src="resources/js/main.js"></script>
</body>
</html>
