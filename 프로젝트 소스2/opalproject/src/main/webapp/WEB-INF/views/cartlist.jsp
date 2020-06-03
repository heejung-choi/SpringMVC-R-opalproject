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
<title>OPAL :: 장바구니</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="/opalproject/resources/images/Opal.png">
<link rel="stylesheet" href="/opalproject/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/opalproject/resources/css/flexslider.css">
<link rel="stylesheet" href="/opalproject/resources/css/jquery.fancybox.css">
<link rel="stylesheet" href="/opalproject/resources/css/main.css">
<link rel="stylesheet" href="/opalproject/resources/ourcss/cartlist.css">
<link rel="stylesheet" href="/opalproject/resources/css/responsive.css">
<link rel="stylesheet" href="/opalproject/resources/css/animate.min.css">
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

<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>


<script>
	$(document).ready(function(){
		// 리스트 페이지로 이동
		$("#btnList").click(function(){
			location.href="/opalproject/goods";
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
									<li><a href="#">내 질병 분석 보기</a></li>
									<li><a href="#">회원정보 수정</a></li>
								</ul>
							<li><form action="${pageContext.request.contextPath}/logout" method="POST">
									<input id="logoutBtn" class="logout_button" type="submit" value="Logout" /> 
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
	</section>
	<!-- banner -->

   <section id="read">
      	<!-- 20200513-->
		

<h2>장바구니 확인</h2>
<h4>주문하실 상품명 및 수량을 정확하게 확인해주세요.</h4>
<div class="check_list">
<c:choose>
	<c:when test="${map.count}==1">
		장바구니가 비어있습니다.
	</c:when>
	<c:otherwise>
	<form name="form1" id="form1" method="post" action="/opalproject/cart/update">
		<table>
			<tr>
				<th>선택</th>
				<th>주문상품</th>
				<th>수량</th>
				<th>상품금액</th>
				<th></th>
			</tr>
			<c:forEach var="row" items="${map.list}" varStatus="i">
			<tr>
				<td><label class="checkbox-label"><input type="checkbox"
							name="check" value="check" /><span
							class="checkbox-custom rectangular"></span></label></td>
				<td>${row.product_name}</td>
				<td><input type="number" style="width: 50px" name="amount" value="${row.cart_amount}" min="1">
				<input type="hidden" name="product_cd" value="${row.product_cd}"></td>
				<td style="width: 150px" align="right"><fmt:formatNumber pattern="###,###,###" value="${row.money}"/></td>
				<td> <a class="cancel" href="/opalproject/cart/delete?cart_cd=${row.cart_cd}"> 
				     <img src="/opalproject/resources/images/cancel.png" width="15" alt=""></a>
				</td>
			</tr>
			</c:forEach>
			<tr>
			   <td class="check_desc" ></td>
			   <td class="check_desc" ></td>
			   <td class="check_desc" ></td>
				<td class="check_desc" colspan="5" align="right">
					상품금액 : <fmt:formatNumber pattern="###,###,###" value="${map.sumMoney}"/><br>
					배송료 : ${map.fee}<br>
					결제 예정금액 : <fmt:formatNumber pattern="###,###,###" value="${map.allSum}"/>
				</td>
			</tr>
		</table>
		<input type="hidden" name="count" value="${map.count}">
		 </div>
		 <div class="product_update">
		<button class="btn_update" type="submit" id="btnUpdate">장바구니 변경</button>
		</div>
	</form>
    </c:otherwise>
   </c:choose>
  <div class="product_back">
  <button class="btn_back" type="button" id="btnList">상품목록</button>
  </div>
   </section>


   <footer class="footer">
      <div class="footer-top">
         <div class="container">
            <div class="row">
               <div class="footer-col col-md-4"></div>
               <div class="footer-col col-md-4">
                  <img src="/opalproject/resources/images/Opal.png" width="150" alt="">
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