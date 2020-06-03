<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="resources/ourcss/goodsInsert.css">
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

			<div class="collapse navbar-collapse" id="navbarColor03" style="height:100px">
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
				</ul></div>
			</div>
		</nav>
	</div>
	<hr>
	<br>
	<!--main navbar 끝-->
	
	<section>
	<!-- 여기에 만든 컨텐츠를 넣으면 될 것 같다. -->
	<!-- Main Controller 내부에 존재하는 datamain 메서드. -->
	<!-- 20200519 박은하 힘을내요 슈퍼빠월 -->


	<section id="goodsInsert">
	  <div class="goodswrap">
	  <div class="goodsfeagure">
	<h3>상품 등록</h3>
	<hr>
		<form method="POST" action="/opalproject/goods" >
			<input type="hidden" name="action" value="insert">
			
				<!-- <div class="form-group">
					<label for="name">농가 이름</label> 
					<input type="text" class="form-control" placeholder="이름를 입력하세요."> 
				</div>
			 -->
			  <div class="form-group">
						 <input type="hidden" name="product_cd" value="1">
					</div>
					
				<div class="form-group">
					<label for="product_name">상품 이름</label> 
					<input type="text" class="form-control" placeholder="상품 이름을 작성하세요." name="product_name"> 
				</div>
				<div class="form-group">
					<label for="product_content">상품 설명</label>
					<textarea class="form-control" id="product_content" rows="20" name="product_content"></textarea>
				</div>
				<div class="form-group">
					<label for="product_price">상품 가격</label> 
					<input type="number" class="form-control" placeholder="상품 가격을 입력해주세요." name="product_price">
				</div>
				<div class="form-group">
						<input type="hidden" id="farm_cd" name="farm_cd" value="1">
					</div>
				<div class="form-group">
					<label for="product_su">상품 수량</label> 
					  <input id="product_su" type="text" class="form-control" placeholder="상품 수량을 입력해주세요." name="product_su">
					
				</div>
				
				<div class="form-group">
					<label for="exampleInputFile">File input</label> <input type="file"
						class="form-control-file" id="exampleInputFile"
						aria-describedby="fileHelp" name="file"> <small id="fileHelp"
						class="form-text text-muted">상품 이미지를 첨부해주세요</small>
				</div>
				<div class="submit_button">
				<div class="submit_figure">
				<button type="submit" class="insert_button">등록하기</button>
				</div>
				</div>
	
		</form>
		</div>
		</div>
	</section>
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