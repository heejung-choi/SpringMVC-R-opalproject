<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.List,model.vo.GoodsVO"%>

<!DOCTYPE html>
<html class="no-js" lang="">
<head>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>OPAL :: 상품 상세</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="/opalproject/resources/images/Opal.png">
<link rel="stylesheet"
	href="/opalproject/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/opalproject/resources/css/flexslider.css">
<link rel="stylesheet"
	href="/opalproject/resources/css/jquery.fancybox.css">
<link rel="stylesheet" href="/opalproject/resources/css/main.css">
<link rel="stylesheet" href="/opalproject/resources/ourcss/details.css">
<link rel="stylesheet" href="/opalproject/resources/css/responsive.css">
<link rel="stylesheet" href="/opalproject/resources/css/animate.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
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

<script>
	$(document).ready(function(){
		// 리스트 페이지로 이동
		$("#btns").click(function(){
			location.href="/opalproject/signin";
		});
	});
</script>
</head>
<body>

	<section class="banner" role="banner">
		<header id="header">
			<div id="nav" class="header-content clearfix">
				<a class="logo" href="/opalproject/index"> 
				   <img src="/opalproject/resources/images/Opal.png" width="100" alt=""></a>
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
									<li><a href="#">내 질병 분석 보기</a></li>
									<li><a href="/opalproject/meminfomodify">회원정보 수정</a></li>
									<li><a href="/opalproject/cart/list">장바구니</a></li>
								</ul>
							<li><form action="${pageContext.request.contextPath}/logout" method="POST">
									<input id="logoutBtn" class="logout_button" type="submit" value="로그아웃" /> 
									<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
								</form>
							</li>
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
	<section id="customLogin">
		<!-- 20200513-->


		<%
			List<GoodsVO> list = (List<GoodsVO>) request.getAttribute("list");
			//System.out.print("리스트 출력" + list);
			GoodsVO listOne = (GoodsVO) request.getAttribute("listOne");
		%>
		<div id="read">
			<div class="product">
				<input type="hidden" name="product_cd" value="${ listOne.product_cd }">
				<div class="product_img">
					<img src="/opalproject/resources/imgp/<%=listOne.getProduct_url()%>.PNG">
				</div>
				<div class="product_content">
					<span id="name" name="name"><%=listOne.getProduct_name()%></span><br>
					<div contenteditable="true" id="content" name="content"><%=listOne.getProduct_content()%></div>
					<br>
					<table>
						<tr>
							<td class="tit">가격</td><td id="price" class="desc" name="price"><%=listOne.getProduct_price()%>원</td>
						</tr>
						<tr>
							<td class="tit">중량/용량</td><td id="su" class="desc" name="su"><%=listOne.getProduct_su()%></td>
						</tr>
						<tr>
							<td class="tit">수량</td><td class="desc">
							
							
							
							
							
							
							<h1>${principal.username}</h1>
							<sec:authorize access="isAnonymous()">
								<form name="form1" method="POST" action="/opalproject/signin">
							</sec:authorize>
							<sec:authorize access="isAuthenticated()">
								<form name="form1" method="POST" action="/opalproject/cart/insert">
							</sec:authorize>
									<input type="hidden" name="product_name" value="<%=listOne.getProduct_name()%>"> 
									<input type="hidden" name="money" value=" <%=listOne.getProduct_price()%>"> 
									<input type="hidden" name="product_cd" value="${ listOne.product_cd}">
									
									<select name="cart_amount">
										<c:forEach begin="1" end="20" var="i">
							                       구매수량 <option value="${i}">${i}</option>
										</c:forEach>
									</select></td>
										</tr>
									</table>
								</div>
								<div class="product_input">
				 			<sec:authorize access="isAnonymous()">
									<input type="submit" id="btns" class="btn_input" value="장바구니에 담기">
							</sec:authorize>
							 <sec:authorize access="isAuthenticated()">
							 	<input type="submit" class="btn_input"value="장바구니에 담기"> 
							 </sec:authorize>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					</form>
					
					
					
					
					
					
					
					
					
					<button class="btn_back" onclick="location.href ='/opalproject/product'">상품목록</button>
				</div>
			</div>
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
					.write('<script src="/opalproject/resources/js/jquery.min.js"><\/script>')
</script>
<script src="/opalproject/resources/js/bootstrap.min.js"></script>
<script src="/opalproject/resources/js/jquery.flexslider-min.js"></script>
<script src="/opalproject/resources/js/jquery.fancybox.pack.js"></script>
<script src="/opalproject/resources/js/jquery.waypoints.min.js"></script>
<script src="/opalproject/resources/js/retina.min.js"></script>
<script src="/opalproject/resources/js/modernizr.js"></script>
<script src="/opalproject/resources/js/main.js"></script>
</html>