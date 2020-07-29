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
<img src="resources/img/remain4.png" width="500px">
</div>
<br><br>
<h3 class="recipe_h3">
집에서도 비주얼 좋은 목살스테이크를!<br> 이번에는 쉬운 백종원 선생님 레시피로 만들었어요!<br>
비주얼도 최고 맛도 최고 입니다!
<br>
</div>

<div class="redetail">
<h3 class="recipe_h3"><img src="resources/img/reicon2.png" width=32px; height=32px; alt="..."> 요리 재료</h3>
<br>
<h4 class="recipe_h4">[재료]</h4>
<p>돼지고기 목살 150g, 통마늘 6-10개 계란 1알</p>
<br>
<h4 class="recipe_h4">[소스]</h4>
<p>버터 약 5cm, 케찹 2숟가락, 설탕 1숟가락, 간장 1숟가락, 식초 1숟가락, 물 40cc</p>
<br>
<h4 class="recipe_h4">[돼지고기 밑간]</h4>
<p>소금 약간, 후추 약간, 밀가루 1숟가락</p>
<br>
<h3 class="recipe_h3"><img src="resources/img/reicon1.png" width=32px; height=32px; alt="..."> 조리 순서</h3>
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 재료를 준비해주세요!
샐러드용 야채는 기호에따라 준비하시면 됩니다	</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail4_1.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">먼저 돼지고기 손질부터할게요~
돼지고기 목살은 힘줄때문에 굽다보면 오그라들잖아요.
칼집을 군데군데 넣어 힘줄을 끊어 예쁘게 굽히도록 손질해줍니다</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail4_2.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 소금, 후추 약간씩해서 밑간해주시구요~</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail4_3.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">밀가루옷을 입혀주세요
밀가루옷을 입히는 이유는 모양유지, 육즙보존, 소스흡수 잘되도록! 입니다!</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail4_4.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">팬에 기름을 넉넉하게 둘러준다음 고기를 익혀줍니다
통마늘도 함께 넣어주세요! 기름에 마늘향이 나와서 더 맛있게 구울수있어요 이때 불은 약불로 해주세요.</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail4_5.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">이렇게 핏물이 올라오기시작하면 뒤집어주고~
불은 약불이라고 말씀드렸죠?
이때는 노릇노릇 바싹 익히는게 아니라 약한불에서 천천히 익혀주는거에요</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail4_6.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 통마늘이 노릇노릇 잘익었고 고기도 익었다면 따로 덜어두고~</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail4_7.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">팬에 기름기를 닦아냅니다</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail4_8.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">고기는 2차로 구워줄게요!
이때 필요한건 버터!</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail4_9.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">이때 버터를 발라주며 노릇노릇하게 익혀주시면됩니다</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail4_10.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">고기가 잘익으면 덜어두고~
팬에 그대로 소스를 만들게요~
케찹 2숟갈, 설탕 1숟갈, 간장1숟갈, 식초 1숟갈 넣어 신맛을 날리기위해 이대로 달달 볶아주다가</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail4_11.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">물을 40cc정도 추가해서 끓여주세요</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail4_12.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">바글바글 끓어오르면 고기와 통마늘을 넣어 익혀주면 끝!</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail4_13.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">목살스테이크에 빠질수없는 계란후라이도 올리고~ 샐러드용야채도 함께 올리면 비쥬얼이 더 업업업!</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail4_14.png" height="150px" width="200px" class="card-img" alt="...">
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