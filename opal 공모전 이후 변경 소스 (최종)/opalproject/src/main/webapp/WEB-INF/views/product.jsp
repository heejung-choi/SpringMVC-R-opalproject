<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.List,model.vo.GoodsVO"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="model.vo.GoodfoodVO"%>
<html class="no-js" lang="">
<head>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>OPAL :: 상품 목록</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="/opalproject/resources/images/Opal.png">
<link rel="stylesheet"
	href="/opalproject/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/opalproject/resources/css/flexslider.css">
<link rel="stylesheet"
	href="/opalproject/resources/css/jquery.fancybox.css">
<link rel="stylesheet" href="/opalproject/resources/css/main.css">
<link rel="stylesheet" href="/opalproject/resources/css/responsive.css">
<link rel="stylesheet" href="/opalproject/resources/css/animate.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="/opalproject/resources/ourcss/goodproduct.css">
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
				<a class="logo" href="/opalproject/index"> <img
					src="/opalproject/resources/images/Opal.png" width="100" alt=""></a>
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
							<li><form action="${pageContext.request.contextPath}/logout"
									method="POST">
									<input id="logoutBtn" class="logout_button" type="submit"
										value="로그아웃" /> <input type="hidden"
										name="${_csrf.parameterName}" value="${_csrf.token}">
								</form></li>
						</sec:authorize>
					</ul>
				</nav>
				<a href="#" class="nav-toggle">Menu<span></span></a>
			</div>
			<!-- header content -->
		</header>
		<!-- header -->
	</section>
	<!-- banner -->

	<section id="goods">
		<!-- 20200513-->


		<h1>나를 위한 맞춤 수퍼 푸드 마켓</h1>
		<div class="wrapper">

			<%
				List<GoodsVO> list = (List<GoodsVO>) request.getAttribute("list");

				System.out.print("리스트 출력" + list);

				if (list != null) {
			%>
			<div id="columns">
				<%
					for (GoodsVO vo : list) {
				%>

				<div class="card">
					<img src="/opalproject/resources/imgp/<%=vo.getProduct_url()%>.PNG" height=200px>
					<h2 class="title"><%=vo.getProduct_name()%></h2>
					<%
						System.out.print(vo.getProduct_name());
					%>
					<p class="copy" style="height:70px;"><%=vo.getProduct_content()%></p>
					<%
						System.out.print(vo.getProduct_content());
					%>
					<button class="btn"
						onclick="location.href='/opalproject/product/read?product_cd=<%=vo.getProduct_cd()%>'">
						<%=vo.getProduct_name()%>보러가기
					</button>
				</div>

				<%
					}
				%>
			</div>
			<%
				}
			%>

		</div>

	</section>


	<footer class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="footer-col col-md-4"></div>
					<div class="footer-col col-md-4">
						<img src="/opalproject/resources/images/Opal.png" width="150"
							alt="">
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