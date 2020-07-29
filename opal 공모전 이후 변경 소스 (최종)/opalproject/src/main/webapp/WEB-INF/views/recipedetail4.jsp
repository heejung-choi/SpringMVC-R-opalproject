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
<img src="resources/img/remain3.png" width="500px">
</div>
<br><br>
<h3 class="recipe_h3">
달달하니 맛있는 새우를 이용해 콩나물새우찜을 만들어보도록 하겠습니다!<br>
아삭아삭한 콩나물과 달달한 새우의 조합으로 밥도둑 레시피 입니다.
<br>
</div>

<div class="redetail">
<h3 class="recipe_h3"><img src="resources/img/reicon2.png" width=32px; height=32px; alt="..."> 요리 재료</h3>
<br>
<h4 class="recipe_h4">[재료]</h4>
<p>새우 6-7마리, 바지락 1줌, 콩나물 1봉지, 미나리 약간, 대파 1대, 청양고추 2개, 홍고추 1개</p>
<br>
<h4 class="recipe_h4">[양념]</h4>
<p>고추가루 4숟갈, 간장 3숟갈, 맛술 2숟갈, 올리고당 2숟갈, 다진마늘 1큰술, 후춧가루 톡톡</p>
<br>
<h3 class="recipe_h3"><img src="resources/img/reicon1.png" width=32px; height=32px; alt="..."> 조리 순서</h3>
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 새우만 넣을까 하다가 냉동실에 얼려둔 바지락이있어 함께 넣어줬어요.
모듬해물같은거 같이 넣어주셔도 좋을것같구요~
새우 까먹기 귀찮다거나 하시는 분들은 자숙새우 조금 큰걸로 하셔도 좋을듯 합니다.</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail3_1.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 새우찜에 빠질수없는 콩나물 준비!
그리고 미나리, 대파, 고추 준비했어요.</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail3_2.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">고추가루가 좀 불어야 더 맛있기 때문에 양념을 미리 만들어 둡니다.</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail3_3.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 콩나물도 씻어 준비해주고~ 야채들도 다듬어 적당한 사이즈로 잘라줍니다.</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail3_4.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">본격적으로 만들어볼게요!
미리 씻어 물기를 제거한 새우와 바지락을 팬에 넣어 익혀주세요.</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail3_5.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">저는 바지락에서 물이 나와서 그냥 볶아가며 요리했는데 새우만 하신다면 물을 소주잔으로 한컵정도 넣어 익혀주시는게 좋습니다.</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail3_6.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">바지락이 입을 벌리고 새우도 벌겋게 익었다면 위에 콩나물을 넣고 뚜껑을 덮어 콩나물의 숨을 죽여주세요.</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail3_7.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 콩나물이 한김 숨죽고나서~ 미리 만들어둔 양념장을 넣고 잘섞어 볶아줍니다.</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail3_8.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 마무리로 대파랑 고추 넣어 섞어주고</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail3_9.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6">제일 마지막에 미나리 올려주기!
마무리로 기호에 따라 참기름을 살짝 둘러주셔도 좋아요.</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail3_10.png" height="150px" width="200px" class="card-img" alt="...">
	    </div>
	  </div>
	</div>
<!-- 20200722 희정 카드 끝-->
<!-- 20200722 희정 카드 시작 -->
	<div class="card border-white mb-3" >
	  <div class="row no-gutters">  
	    <div class="col-md-8">
	      <div class="card-body">
	       <h4 class="recipe_h6"> 그릇에 예쁘게 담고 통깨 솔솔 뿌려주면 제철새우로 만든 매콤한 새우찜 완성!</h4>
	      </div>
	    </div>
	    <div class="col-md-4">
	      <img src="resources/img/redetail3_11.png" height="150px" width="200px" class="card-img" alt="...">
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