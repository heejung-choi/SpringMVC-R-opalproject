<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.List, model.vo.GoodsVO, model.vo.FarmVO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>소개</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" href="resources/journal/bootstrap.css"
	media="screen">
<link rel="stylesheet" href="resources/_assets/css/custom.min.css">
<link rel="stylesheet" href="resources/ourcss/main.css">
<link rel="stylesheet" href="resources/ourcss/goods.css">

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
					    <li class="nav-item2"><a class="nav-link" style="padding-right: 4rem;" href="/opalproject/goodsInsertForm">상품등록</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<hr>
	<br>
	<!--main navbar 끝-->

	<section>
		<!-- 여기에 만든 컨텐츠를 넣으면 될 것 같다. -->
		<!-- Main Controller 내부에 존재하는 goods 메서드. -->
		<!-- 20200513-->
		<%-- 
		<% FarmVO farmVO = (FarmVO)request.getAttribute("farmVO"); %> --%>
<%-- <%
List<GoodsVO> list = (List<GoodsVO>)request.getAttribute("list");
GoodsVO vo = (GoodsVO)request.getAttribute("vo");
%>
		
<%
if(list!=null && list.size()!=0){

	for(GoodsVO vo1 : list){
%>
       
		<main class="page-content">
			<div class="card">
				<div class="content">
					<h2 class="title"><%= vo1.getProduct_name() %></h2>
					<p class="copy"><%= vo1.getProduct_content() %></p>
					<button class="btn" onclick="location.href='/opalproject/details';"><%= vo1.getProduct_name() %></button>
				</div>	
			</div>

<%
	}

	}
%>



<%
if(list!=null && list.size()!=0){

	for(GoodsVO vo1 : list){
%>
       
		<main class="page-content">
			<div class="card">
				<div class="content">
					<h2 class="title"><%= vo1.getProduct_name() %></h2>
					<p class="copy"><%= vo1.getProduct_content() %></p>
					<button class="btn" onclick="location.href='/opalproject/details';"><%= vo1.getProduct_name() %></button>
				</div>	
			</div>

<%
	}

	}
%>

<%
if(list!=null && list.size()!=0){

	for(GoodsVO vo1 : list){
%>
       
		<main class="page-content">
			<div class="card">
				<div class="content">
					<h2 class="title"><%= vo1.getProduct_name() %></h2>
					<p class="copy"><%= vo1.getProduct_content() %></p>
					<button class="btn" onclick="location.href='/opalproject/details';"><%= vo1.getProduct_name() %></button>
				</div>	
			</div>

<%
	}

	}
%> --%>


		<main class="page-content">
			<div class="card">
				<div class="content">
					<h2 class="title">고혈압, 영지버섯</h2>
					<p class="copy">이동욱 뺨치는 농장주가 직접 키운 친환경 버섯</p>
					<button class="btn" onclick="location.href='/opalproject/details';">영기네 영기버섯 보러가기</button>
				</div>	
			</div>

			<div class="card">
				<div class="content">
					<h2 class="title">당뇨, 여주</h2>
					<p class="copy">비타민 채소,천연 인슐린</p>
					<button class="btn" onclick="location.href='/opalproject/details';">세미네 여주아울렛 보러가기</button>
				</div>
			</div>

			<div class="card">
				<div class="content">
					<h2 class="title">당뇨, 돼지감자진액</h2>
					<p class="copy">자연에서 얻은 천연 인슐린</p>
					<button class="btn" onclick="location.href='/opalproject/details';">지원이네 돼지감자 보러가기</button>
				</div>
			</div>

			<div class="card">
				<div class="content">
					<h2 class="title">위장질환, 비트</h2>
					<p class="copy">혈관미남이 되는 현명한 방법</p>
					<button class="btn" onclick="location.href='/opalproject/details';">동규네
						비트주세요 보러가기</button>
				</div>
			</div>

			<div class="card">
				<div class="content">
					<h2 class="title">췌장염, 효소</h2>
					<p class="copy">가족 건강을 책임지는</p>
					<button class="btn" onclick="location.href='/opalproject/details';">지혜네
						효소원 보러가기</button>
				</div>
			</div>

			<div class="card">
				<div class="content">
					<h2 class="title">당뇨, 새싹보리</h2>
					<p class="copy">천연 해독 식물</p>
					<button class="btn" onclick="location.href='/opalproject/details';">성진이네
						보리지혜 보러가기</button>
				</div>
			</div>

			<div class="card">
				<div class="content">
					<h2 class="title">고혈압, 양파즙</h2>
					<p class="copy">껍질속 영양까지 통째로 담아낸 유기농 양파즙</p>
					<button class="btn" onclick="location.href='/opalproject/details';">성연이네
						양파남 보러가기</button>
				</div>
			</div>


			<div class="card">
				<div class="content">
					<h2 class="title">기관지, 생강</h2>
					<p class="copy">목이 알싸할 땐</p>
					<button class="btn" onclick="location.href='/opalproject/details';">수이네
						생강 보러가기</button>
				</div>
			</div>

			<div class="card">
				<div class="content">
					<h2 class="title">치주질환, 녹차</h2>
					<p class="copy">녹차아이스크림 헤이러도 자다가 일어나는</p>
					<button class="btn" onclick="location.href='/opalproject/details';">규영이네
						녹차 보러가기</button>
				</div>
			</div>

			<div class="card">
				<div class="content">
					<h2 class="title">감기, 도라지</h2>
					<p class="copy">귀찮은 도라지 손질은 이제 그만</p>
					<button class="btn" onclick="location.href='/opalproject/details';">희정이네
						도라쥐 보러가기</button>
				</div>
			</div>

			<div class="card">
				<div class="content">
					<h2 class="title">위장염, 양배추브로콜리즙</h2>
					<p class="copy">조세호 양배추 아님</p>
					<button class="btn" onclick="location.href='/opalproject/details';">세호네
						양배추즙 보러가기</button>
				</div>
			</div>

			<div class="card">
				<div class="content">
					<h2 class="title">대장암, 유기농 마늘장아찌</h2>
					<p class="copy">돈가쓰 너마늘</p>
					<button class="btn" onclick="location.href='/opalproject/details';">찬우네
						마늘장아찌 보러가기</button>
				</div>
			</div>

			<div class="card">
				<div class="content">
					<h2 class="title">호흡기질환, 지리산 벌꿀</h2>
					<p class="copy">깊은 맛과 향이 남다른 프리미엄 꿀</p>
					<button class="btn" onclick="location.href='/opalproject/details';">소연이네
						꿀농장 보러가기</button>
				</div>
			</div>
 			<div class="card">
				<div class="content">
					<h2 class="title">위암, 노루궁뎅이버섯</h2>
					<p class="copy">무농약 노루궁뎅이 버섯</p>
					<button class="btn" onclick="location.href='/opalproject/details';">해림이네 버섯농장 보러가기</button>
				</div>	
			</div>

		</main>

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