<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<head>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>OPAL :: TEAM</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="resources/images/Opal.png">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/flexslider.css">
<link rel="stylesheet" href="resources/css/jquery.fancybox.css">
<link rel="stylesheet" href="resources/css/main.css">
<link href="resources/ourcss/about.css" rel="stylesheet" type="text/css" />
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
		<a class="logo" href="/opalproject/index">
				   <img src="resources/images/Opal.png" width="100" alt=""></a>
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
					<h1>TEAM</h1>
				</div>
				<!-- banner text -->
			</div>
		</div>
	</section>
	<!-- banner -->

	<div class="cardwrap">
		<div class="card_columns">
			<div class="card">
				<h3 class="card-header">
					김동규<span>Kim-Dongkyu</span>
				</h3>
				<div class="card-body">
					<h4 class="card-title">프로젝트 총 책임자</h4>
					<h4 class="card-subtitle text-muted">Back-end Developer</h4>
				</div>
				<img style="height: 200px; width: 100%; display: block;"
					src="resources/imgp/team1.jpg"
					alt="Card image">
				<ul class="list-group list-group-flush">
					<li class="list-group-item">백엔드 개발 총 책임</li>
					<li class="list-group-item">회원 가입 및 로그인 기능 구현</li>
					<li class="list-group-item">서비스 내 API 관리 구현</li>
				</ul>
			</div>
			<!--동규 소개 끝-->

			<div class="card">
				<h3 class="card-header">
					최희정<span>Choi-Heejung</span>
				</h3>
				<div class="card-body">
					<h4 class="card-title">데이터 분석 및 기획자</h4>
					<h4 class="card-subtitle text-muted">Data Analysis & Product
						Managing</h4>
				</div>
				<img style="height: 200px; width: 100%; display: block;"
					src="resources/imgp/team3.jpg"
					alt="Card image">
				<ul class="list-group list-group-flush">
					<li class="list-group-item">데이터 크롤링 및 분석</li>
					<li class="list-group-item">질병 상관관계 및 영양정보/식생활 페이지 구현</li>
					<li class="list-group-item">D3.js 데이터 시각화</li>
				</ul>
			</div>
			<!--희정 소개 끝-->

			<div class="card">
				<h3 class="card-header">
					박은하<span>Park-Eunha</span>
				</h3>
				<div class="card-body">
					<h4 class="card-title">데이터 시각 및 분석가</h4>
					<h4 class="card-subtitle text-muted">Data-Mining & Analysis</h4>
				</div>
				<img style="height: 200px; width: 100%; display: block;"
					src="resources/imgp/team2.jpg"
					alt="Card image">
				<ul class="list-group list-group-flush">
					<li class="list-group-item">데이터 크롤링 및 분석</li>
					<li class="list-group-item">상품 목록 및 상세 페이지 구현</li>
					<li class="list-group-item">장바구니 및 결제 페이지 구현</li>
				</ul>
			</div>
			<!--은하 소개 끝-->

			<div class="card">
				<h3 class="card-header">
					정해림<span>Jeong-Haerim</span>
				</h3>
				<div class="card-body">
					<h4 class="card-title">프론트엔드 개발자</h4>
					<h4 class="card-subtitle text-muted">Front-End Developer</h4>
				</div>
				<img style="height: 200px; width: 100%; display: block;"
					src="resources/imgp/team4.jpg"
					alt="Card image">
				<ul class="list-group list-group-flush">
					<li class="list-group-item">프론트엔드 총 책임</li>
					<li class="list-group-item">데이터 전처리 및 그래프 출력</li>
					<li class="list-group-item">코드 병합 및 단위 테스트 서포트</li>
				</ul>
			</div>
			<!--해림 소개 끝-->
		</div>
	</div>
	<!--팀원 소개 끝-->
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