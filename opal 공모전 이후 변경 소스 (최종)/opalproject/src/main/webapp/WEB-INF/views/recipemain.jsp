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
<title>OPAL :: Recipe</title>
<link rel="icon" type="image/png" sizes="32x32" href="resources/images/Opal.png">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/flexslider.css">
<link rel="stylesheet" href="resources/css/jquery.fancybox.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/ourcss/recipemain.css">
<link rel="stylesheet" href="resources/css/responsive.css">
<link rel="stylesheet" href="resources/css/animate.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
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
					<h1>RECIPE</h1>
				</div>
				<!-- banner text -->
			</div>
		</div>
	</section>
	<!-- banner -->
<br>
<br>
<div class="text-center">
<h2 class="recipe_h1" >농가 살리는 OPAL 레시피 & 농가 스토리</h2>
</div>

<section>
<!-- 레시피 메인 카드 출력 시작 -->
<div class="mainrecipe">
	<div class="card_columns">
	    <div class="card">
	      <img src="resources/img/remain1.png" class="card-img-top" alt="..." >
	      <div class="card-body ">
	        <h5 class="card-title text-center font_card">농가살리는 차돌박이찜</h5>
	      	<div class="text-center">
	      		<button onclick = "location.href = '/opalproject/recipedetail1' " class="btn_recipe">레시피 보러가기</button>
	      	</div>
	      </div>
	    </div>
	    <div class="card">
	      <img src="resources/img/farmst1.jpg" class="card-img-top" alt="...">
	      <div class="card-body ">
	        <h5 class="card-title text-center font_card">토종닭 우리맛닭을 아시나요?</h5>
	      	<div class="text-center">
	      		<button onclick = "location.href = '/opalproject/recipedetail2' " class="btn_recipe">농가스토리 보러가기</button>
	      	</div>
	      </div>
	    </div>
	    <div class="card">
	      <img src="resources/img/remain2.png" class="card-img-top" alt="...">
	      <div class="card-body">
	        <h5 class="text-center font_card">농가살리는 바싹감자전</h5>
	      	<div class="text-center">
	      		<button onclick = "location.href = '/opalproject/recipedetail3' " class="btn_recipe">레시피 보러가기</button>
	      	</div>
	      </div>
	    </div>
	    <div class="card">
	      <img src="resources/img/remain3.png" class="card-img-top" alt="...">
	      <div class="card-body">
	        <h5 class="text-center font_card">농가살리는 콩나물새우찜</h5>
	      	<div class="text-center">
	      		<button onclick = "location.href = '/opalproject/recipedetail4' " class="btn_recipe">레시피 보러가기</button>
	      	</div>
	      </div>
	    </div>
	    <div class="card">
	      <img src="resources/img/farmst2.jpg" class="card-img-top" alt="...">
	      <div class="card-body ">
	        <h5 class="card-title text-center font_card">혈관건강 책임지는 메밀</h5>
	      	<div class="text-center">
	      		<button onclick = "location.href = '/opalproject/recipedetail5' " class="btn_recipe">농가스토리 보러가기</button>
	      	</div>
	      </div>
	    </div>
	    <div class="card">
	      <img src="resources/img/remain4.png" class="card-img-top" alt="...">
	      <div class="card-body">
	        <h5 class="text-center font_card">농가살리는 목살스테이크</h5>
	      	<div class="text-center">
	      		<button onclick = "location.href = '/opalproject/recipedetail6' " class="btn_recipe">레시피 보러가기</button>
	      	</div>
	      </div>
	    </div>
	  </div>	 
<!-- 레시피 메인 카드 출력 끝 -->
</div>
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

<!-- JS, Popper.js, and jQuery -->
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