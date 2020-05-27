<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>소개</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" href="resources/journal/bootstrap.css"
	media="screen">
<link rel="stylesheet" href="resources/_assets/css/custom.min.css">
<link rel="stylesheet" href="resources/ourcss/main.css">
<link rel="stylesheet" href="resources/ourcss/about.css">

</head>
<body>
	<header>
		<div class="header_wrap">
			<div class="logo">
				<a href="/opalproject/main">
					<h1>
						<img src="resources/images/Opal.png" width=150 alt class="default_logo">
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
									<li class="nav-item"><a class="nav-link" style="font-size: 12px;" href="/opalproject/signin">로그인</a></li>
									<li class="nav-item"><a class="nav-link" style="font-size: 12px;" href="/opalproject/singup">회원가입</a></li>
									<li class="nav-item"><a class="nav-link" style="font-size: 12px;" href="#">고객센터</a></li>
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
						<li class="nav-item2"><a class="nav-link" style="padding-right: 4rem;" href="/opalproject/about">소개</a></li>
						<li class="nav-item2"><a class="nav-link" style="padding-right: 4rem;" href="/opalproject/datamain">질병DATA</a></li>
						<li class="nav-item2"><a class="nav-link" style="padding-right: 4rem;" href="/opalproject/goods">농산물구매</a></li>
						<li class="nav-item2"><a class="nav-link" style="padding-right: 4rem;" href="/opalproject/markets">농가별구매</a></li>
						<li class="nav-item2"><a class="nav-link" style="padding-right: 4rem;" href="#">레시피</a></li>
						<li class="nav-item2"><a class="nav-link" style="padding-right: 4rem;" href="#">식단추천</a></li>
						<li class="nav-item2"><a class="nav-link" style="padding-right: 4rem;" href="#">정기결제</a></li>
						<li class="nav-item2"><a class="nav-link" style="padding-right: 4rem;" href="/opalproject/goodsInsertForm">상품등록</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<hr>
	<br>
	<!--main navbar 끝-->

	<section id="about">
		<h1 class="about_1">ABOUT US</h1>
		<div class="p">
			<p>우리는 신선하고 영양가 많은 친환경 농산물을</p>
			<p>오팔세대에게 전달하고자 노력합니다.</p>
		</div>
		<!--ABOUT US 소개 끝-->

		<div class="cardwrap">
			<div class="card_columns">
				<div class="card">
					<h3 class="card-header">
						김동규<span>Kim-Dongkyu</span></h3>
					<div class="card-body">
						<h5 class="card-title">프로젝트 총 책임자</h5>
						<h6 class="card-subtitle text-muted">Back-end Developer</h6>
					</div>
					<img style="height: 200px; width: 100%; display: block;"
						src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
						alt="Card image">
					<ul class="list-group list-group-flush">
						<li class="list-group-item">회원 관리</li>
						<li class="list-group-item">지도 페이지 관리</li>
						<li class="list-group-item">서비스 내 API 관리</li>
					</ul>
				</div>
				<!--동규 소개 끝-->

				<div class="card">
					<h3 class="card-header">
						최희정<span>Choi-Heejung</span>
					</h3>
					<div class="card-body">
						<h5 class="card-title">데이터 분석 및 기획자</h5>
						<h6 class="card-subtitle text-muted">Data Analysis & Product
							Managing</h6>
					</div>
					<img style="height: 200px; width: 100%; display: block;"
						src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
						alt="Card image">
					<ul class="list-group list-group-flush">
						<li class="list-group-item">DB 아키텍쳐 구성</li>
						<li class="list-group-item">질병 데이터 페이지 구성</li>
						<li class="list-group-item">데이터 분석 및 시각화</li>
					</ul>
				</div>
				<!--희정 소개 끝-->

				<div class="card">
					<h3 class="card-header">
						박은하<span>Park-Eunha</span>
					</h3>
					<div class="card-body">
						<h5 class="card-title">데이터 시각 및 분석가</h5>
						<h6 class="card-subtitle text-muted">Data-Mining & Analysis</h6>
					</div>
					<img style="height: 200px; width: 100%; display: block;"
						src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
						alt="Card image">
					<ul class="list-group list-group-flush">
						<li class="list-group-item">데이터 시각화</li>
						<li class="list-group-item">공공 DB 활용 페이지 구성</li>
						<li class="list-group-item">Streaming 페이지 구성</li>
					</ul>
				</div>
				<!--은하 소개 끝-->

				<div class="card">
					<h3 class="card-header">
						정해림<span>Jeong-Haerim</span>
					</h3>
					<div class="card-body">
						<h5 class="card-title">프론트엔드 개발자</h5>
						<h6 class="card-subtitle text-muted">Front-End Developer</h6>
					</div>
					<img style="height: 200px; width: 100%; display: block;"
						src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22318%22%20height%3D%22180%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20318%20180%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_158bd1d28ef%20text%20%7B%20fill%3Argba(255%2C255%2C255%2C.75)%3Bfont-weight%3Anormal%3Bfont-family%3AHelvetica%2C%20monospace%3Bfont-size%3A16pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_158bd1d28ef%22%3E%3Crect%20width%3D%22318%22%20height%3D%22180%22%20fill%3D%22%23777%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22129.359375%22%20y%3D%2297.35%22%3EImage%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
						alt="Card image">
					<ul class="list-group list-group-flush">
						<li class="list-group-item">메인 페이지 구성</li>
						<li class="list-group-item">웹 사이트 디자인</li>
						<li class="list-group-item">프론트 엔드 유지 보수</li>
					</ul>
				</div>
				<!--해림 소개 끝-->
			</div>
		</div>
		<!--팀원 소개 끝-->

		<br> <br>
		<br> <br>
		<br> <br>
		<hr>
		<br> <br>
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