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
<img src="resources/img/remain2.png" width="500px">
<br><br>
<h3 class="recipe_h3">갈아서 만들지 않고 채칼로 얇게 채썰어서 만든 감자채전 입니다.<br>
채썰어서 만들어 식감이 좋아요!
</h3>
<br>
</div>



<div class="redetail">
<h3 class="recipe_h3"><img src="resources/img/reicon2.png" width=32px; height=32px; alt="..."> 요리 재료</h3>
<br>
<h4 class="recipe_h4">[재료]</h4>
<p>감자 1개, 부침가루 0.5숟갈, 소금 0.3숟갈</p>
<br>

<h3 class="recipe_h3"><img src="resources/img/reicon1.png" width=32px; height=32px; alt="..."> 조리 순서</h3>
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">1인분 분량의 감자전 레시피 입니다.</br> 더 많이 만드실 분들은 양을 늘려주시면 될 듯 합니다.</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail2_1.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 감자는 깨끗히 씻어 껍질을 벗긴 뒤 채칼을 이용해서 얇게 채썰어줍니다.</br> 채칼이 없으시면 직접 최대한 얇게 썰어주세요.</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail2_2.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 얇게 채썬 감자는 찬물에 10분정도 담궈 전분기를 제거하고</br> 채반에 받쳐 물기를 제거해줍니다.</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail2_3.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">약간의 점성을 주기위해 부침가루를 0.5숟갈 넣어주고~</br> 소금도 넣어 간을해준뒤 섞어줍니다.</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail2_4.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 이제 팬에 기름을 두르고 감자채전을 만들거에요.</br> 감자채를 동그랗게 모양잡아 올려주세요.</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail2_5.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">아랫면이 단단하게 익고나서 뒤집어야 모양이 흐트러지지않습니다.</br> 팬 손잡이를 잡고 휙휙 팬을 돌렸을때 감자전에 자유자재로 움직이면 아랫면이 단단하게 익었다는 증거에요.</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail2_6.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">노릇노릇 잘익혀서 그릇에 담아주면</br> 완성 반찬으로도 좋고 야식, 간식으로도 짱짱!</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail2_7.png" height="150px" width="200px" class="card-img" alt="...">
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