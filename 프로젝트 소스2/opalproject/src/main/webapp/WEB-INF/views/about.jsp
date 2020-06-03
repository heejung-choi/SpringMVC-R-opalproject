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
<title>OPAL :: MAIN</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="resources/images/Opal.png">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/flexslider.css">
<link rel="stylesheet" href="resources/css/jquery.fancybox.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/ourcss/about.css">
<link rel="stylesheet" href="resources/css/responsive.css">
<link rel="stylesheet" href="resources/css/animate.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">
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
				<a class="logo" href="/opalproject/index"> <img
					src="resources/images/Opal.png" width="100" alt=""></a>
				<nav class="navigation" role="navigation">
					<ul id="main-menu" class="primary-nav">
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
									<li><a href="#">내 질병 분석 보기</a></li>
									<li><a href="#">회원정보 수정</a></li>
								</ul>
							<li><form action="${pageContext.request.contextPath}/logout" method="POST">
									<input id="logoutBtn" class="logout_button" type="submit" value="Logout" /> 
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


	<section id="about">
		<h1 class="about_1">ABOUT SERVICE</h1>
		<div class="p">
			<p>우리는 이런 서비스를 지향합니다.</p>
		</div>
		<!--ABOUT SERVICE 소개 끝-->
		
		<div class="featurewrap">
			<div class="feature-grid">
				<div class="feature">
					<div class="image_round1">
						<img src="resources/images/collaboration.png" width=150 alt>
					</div>
					<div class="content">
						<p>우리는 언제나 사이트를 이용하는 분들의 목소리를 주의깊게 듣고 빠르게 대답합니다.</p>
						<p>늘 양방향 소통을 지향합니다.</p>
					</div>
				</div>
				<div class="feature">
					<div class="image_round1">
						<img src="resources/images/groceries.png" width=150 alt>
					</div>
					<div class="content">
						<p>우리는 언제 어디서든 접근하기 쉬운 사이트를 운영하며 서비스 합니다. </p>
						<p>늘 열려 있는 사이트를 운영합니다.</p>
					</div>
				</div>
				<div class="feature">
					<div class="image_round2">
						<img src="resources/images/breakfast.png" width=150; alt>
					</div>
					<div class="content">
						<p>우리는 언제나 친환경적이고 신선한 농산물을 식탁에 올립니다.</p>
						<p>우리가 먹는 식품이라고 생각합니다.</p>
					</div>
				</div>
				<div class="feature">
					<div class="image_round2">
						<img src="resources/images/shopping.png" width=150 alt>
					</div>
					<div class="content">
						<p>우리는 언제나 오팔세대들의 질좋은 식품을 쇼핑할 수 있는 환경을 제공합니다.</p>
						<p>늘 만족하는 서비스를 제공합니다.</p>
					</div>
				</div>
			</div>
		</div>
		<!--서비스 소개 끝-->

		<div class=mission_vision>
			<img src="resources/images/Mission_Vision.PNG" width=1100 alt>
			<img src="resources/images/platform.png" width=600 alt>
		</div>
		<!--미션&비전 소개 끝-->

	</section>

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

</body>
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
</html>