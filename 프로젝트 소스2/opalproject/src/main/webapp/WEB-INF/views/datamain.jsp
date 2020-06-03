<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta>
<title>질병 data 페이지</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" href="resources/journal/bootstrap.css"
	media="screen">
<link rel="stylesheet" href="resources/_assets/css/custom.min.css">
<link rel="stylesheet" href="resources/ourcss/main.css">
<link rel="stylesheet" href="resources/ourcss/datamain.css">

<link href="resources/themes/1/js-image-slider1.css" rel="stylesheet"
	type="text/css" />
<link href="resources/themes/1/js-image-slider2.css" rel="stylesheet"
	type="text/css" />
<script src="resources/themes/1/js-image-slider.js"
	type="text/javascript"></script>
<link href="resources/ourcss/generic.css" rel="stylesheet"
	type="text/css" />


</head>
<body>
	<header>
		<div class="header_wrap">
			<div class="logo">
				<a href="/opalproject/main">
					<h1>
						<img src="resources/images/Opal.png" width=150 alt
							class="default_logo">
					</h1>
				</a>
			</div>

			<div class="top_nav">
				<div class="top_ul">
					<div class="bs-component1">
						<nav class="navbar navbar-expand-lg navbar-light bg-light">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarColor03"
								aria-controls="navbarColor03" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>

							<div class="collapse navbar-collapse" id="navbarColor03">
								<ul class="navbar-nav mr-auto">
									<li class="nav-item"><a class="nav-link"
										style="font-size: 12px;" href="/opalproject/signin">로그인</a></li>
									<li class="nav-item"><a class="nav-link"
										style="font-size: 12px;" href="/opalproject/signup">회원가입</a></li>
									<li class="nav-item"><a class="nav-link"
										style="font-size: 12px;" href="#">고객센터</a></li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
	</header>
	<!--header 끝-->

	<div class="bs-component2">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarColor03" aria-controls="navbarColor03"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!--건드리지 마세요.-->

			<div class="collapse navbar-collapse" id="navbarColor03"
				style="height: 100px">
				<div class="navbar-nav2">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="/opalproject/about">소개</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="/opalproject/datamain">질병DATA</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="/opalproject/goods">농산물구매</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="/opalproject/markets">농가별구매</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="#">레시피</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="#">식단추천</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="#">정기결제</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="/opalproject/goodsInsertForm">상품등록</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<!--main navbar 끝-->

	<section id="datamain">
		<!-- 여기에 만든 컨텐츠를 넣으면 될 것 같다. -->
		<!-- Main Controller 내부에 존재하는 datamain 메서드. -->
		<!-- 길어진다면 메서드를 분할해가 사용해도 된다. -->
		<!-- 20200514 jung 질병 데이터 페이지 구성 -->
		<h4 class="textcenter">
			<span style="color: #8cd790">질병명</span><span style="color: #333030">을
				선택하여 질병에 대한 분석정보를 볼 수 있습니다.</span>
		</h4>
		<br>
		<div class="container opt1">
			<button class="button"
				onclick="location.href='http://localhost:8000/opalproject/datasick1'">감기/기관지</button>
			<button class="button"
				onclick="location.href='http://localhost:8000/opalproject/datasick2'">고혈압</button>
			<button class="button"
				onclick="location.href='http://localhost:8000/opalproject/datasick3'">당뇨</button>
			<button class="button"
				onclick="location.href='http://localhost:8000/opalproject/datasick4'">위/식도</button>
			<button class="button"
				onclick="location.href='http://localhost:8000/opalproject/datasick5'">대장/췌장</button>
		</div>
		<br>

		<div class="infomainwrap">
			<div class="infomain1">
				<h1>58세대 다빈도 질병(통원)</h1>
			</div>
			<br>
			<br>
			<div id="sliderFrame1">
				<div id="slider1">
					<img src="resources/img/inmain1.png" alt="통원 질병 WORDCLOUD" /> <img
						src="resources/img/inmain2.png" /> <img
						src="resources/img/inmain3.png" alt="많이 걸리는 3대 통원질병 비교" />
				</div>
			</div>
		</div>
		<div class="infomainwrap2">
			<div class="infomain2">
				<h1>58세대 다빈도 질병(입원)</h1>
			</div>
			<br>
			<br>
			<div id="sliderFrame2">
				<div id="slider2">
					<img src="resources/img/inmain4.png" alt="입원 질병 WORDCLOUD" /> <img
						src="resources/img/inmain5.png" /> <img
						src="resources/img/inmain6.png" alt="많이 걸리는 3대 입원질병 비교" />
				</div>
			</div>
		</div>

	</section>

	<footer>
		<h3>홈페이지 정보(바닥 글)</h3>
	</footer>
	<!--footer 끝-->

</body>
<script src="resources/_vendor/jquery/dist/jquery.min.js"></script>
<script src="resources/_vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="resources/_vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="resources/_assets/js/custom.js"></script>
</html>