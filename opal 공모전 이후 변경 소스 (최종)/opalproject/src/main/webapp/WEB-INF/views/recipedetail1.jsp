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
<link rel="stylesheet" href="resources/ourcss/recipedetail.css">
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
<h1 class="recipe_h1">농가 살리는 OPAL 레시피</h1>
<br>

<div class="recipe_img">
<img src="resources/img/remain1.png" width="500px">
</div>
<br><br>
<h3 class="recipe_h3">손님 상차림으로도 좋은 차돌박이찜 입니다.<br>
만들기도 너무 쉽고 모양도 예뻐서 추천하는 메뉴입니다.<br>
미소된장 마요소스를 찍어 먹으니 한 층 맛이 더 업그레이드!!<br>
정말 강력 추천하는 메뉴입니다.</h3>
<br>
</div>



<div class="redetail">
<h3 class="recipe_h3"><img src="resources/img/reicon2.png" width=32px; height=32px; alt="..."> 요리 재료</h3>
<br>
<h4 class="recipe_h4">[재료]</h4>
<p>차돌박이 10장, 깻잎 5장, 팽이버섯 1묶음, 숙주나물 1주먹</p>
<br>
<h4 class="recipe_h4">[미소된장마요소스]</h4>
<p>미소된장 1큰숟갈, 마요네즈 1숟갈, 올리고당 1숟갈, 다진마늘 0.5숟갈, 고추가루 0.3숟갈, <br>청양고추 1개다진것, 물 2숟갈</p>
<br>
<h3 class="recipe_h3"><img src="resources/img/reicon1.png" width=32px; height=32px; alt="..."> 조리 순서</h3>
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 팽이버섯은 밑둥을 잘라내고 씻어주시고 깻잎도 흐르는물에 씻어주세요</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail1_1.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 차돌박이 위에깻잎을 올리고</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail1_2.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">그위에 팽이버섯을 올려준뒤</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail1_3.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 돌돌 말아주기만하면 완성이에요</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail1_4.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 만드는 방법 완전 간단하죠?</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail1_5.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 냄비에 숙주나물을 한주먹 깔고</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail1_6.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">차돌박이를 올려 10분간 쪄주면 끝</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail1_7.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 차돌박이찜이 완성되는 사이 소스를 만들어볼게요!<br>
	       	처음엔 된장이랑 마요네즈? 하실텐데 드셔보시면 고기랑 정말 잘어울리는 소스!<br>
	       	분량의 재료들을 잘섞어주시면되구요 미소된장이 없으시다면 집된장 말고 시판된장 싱거운걸 사용하셔도 됩니다</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail1_8.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 차돌박이 찜기에 넣고 소스만들면 그사이 차돌박이찜 완성입니다<br>
					금새 익기때문에 정말 초스피드로 완성할수있는 요리에요</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail1_9.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">예쁘게 그릇에 담아주면 끝!</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail1_10.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 된장마요소스에 콕 찍어먹으면 정말 맛있답니다. 강력추천!</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail1_11.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
	
		
	
</div>




<br>
<div class="text-center">
<button onclick = "location.href = '/opalproject/recipemain' " class="btn_recipe">다른 레시피 보러가기</button>
<button onclick = "location.href = '/opalproject/product' " class="btn_recipe">농산물 사러가기</button>
<button onclick = "location.href = '/opalproject/farm' " class="btn_recipe">농가 보러가기</button>
</div>



	<footer class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="footer-col col-md-4"></div>
					<div class="footer-col col-md-4">
						<img src="resources/images/Opal.png" width="70%" height="70%" alt="">
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