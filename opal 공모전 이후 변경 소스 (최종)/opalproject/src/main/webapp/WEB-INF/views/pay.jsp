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
<title>OPAL :: 결제 화면</title>
<link rel="icon" type="image/png" sizes="32x32"
   href="resources/images/Opal.png">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/flexslider.css">
<link rel="stylesheet" href="resources/css/jquery.fancybox.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/pay.css">
<link rel="stylesheet" href="resources/css/responsive.css">
<link rel="stylesheet" href="resources/css/animate.min.css">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link
   href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
   rel="stylesheet">
<link href="resources/ourcss/customLogin.css" rel="stylesheet"
   type="text/css" />
   

<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

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
		$("#btnPay").click(function(){
			location.href="/opalproject/pay";
		});
	});
</script>



</head>
<body>
 	<section class="banner" role="banner">
		<header id="header">
		<div id="nav" class="header-content clearfix">
		<a class="logo" href="/opalproject/index">
				   <img src="resources/images/Opal.png" width="100" alt=""></a>
		<nav class="navigation" role="navigation">	
			<ul id = "main-menu" class="primary-nav">
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
				  <input id="logoutBtn" class="logout_button2" type="submit" value="로그아웃" />
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

   <section id="customLogin">
      	<!-- 20200602 은하-->
		
<div class="timer">
<img src="resources/images/sandglass.gif" width="400">
<h4>결제창을 불러오고 있습니다. 잠시만 기다려주세요.</h4>   
</div>

 <script>
 var IMP = window.IMP; // 생략가능
 IMP.init('imp12403876'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

 IMP.request_pay({
	    pg : 'html5_inicis', // version 1.1.0부터 지원.
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '주문명:결제테스트',
	    amount : 1,
	    buyer_email : 'iamport@siot.do',
	    buyer_name : '정해림',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '서울특별시 강남구 삼성동',
	    buyer_postcode : '123-456',
	  
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
	    } else {
	        var msg = '결제를 취소하였습니다.';
	        
	    }
	    alert(msg);
	});
 
 
 </script>
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
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