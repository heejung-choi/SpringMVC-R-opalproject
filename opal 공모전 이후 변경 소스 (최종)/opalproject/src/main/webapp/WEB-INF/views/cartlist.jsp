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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 
<script>
	$(document).ready(function(){
		// 리스트 페이지로 이동
		$("#btnList").click(function(){
			location.href="/opalproject/product";
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
	</section>
	<!-- banner -->


   <section id="customLogin">
      	<!-- 20200513-->
		

<h2>장바구니 확인</h2>
<h4>주문하실 상품명 및 수량을 정확하게 확인해주세요.</h4>
<div class="check_list">
<c:choose>
	<c:when test="${empty map.list}">
	<table>
	         <tr>
				<th>선택</th>
				<th>주문상품</th>
				<th>수량</th>
				<th>상품금액</th>
				<th>취소</th>
			</tr>
   </table>
   <table>
			<tr>
				<td style="padding: 100px">장바구니가 비어있습니다.</td>
			</tr>
   </table>
   <table>
			<tr>
			 <td class="check_desc" ></td>
			   <td class="check_desc" ></td>
			   <td  style="width: 600px" class="check_desc" ></td>
				<td class="check_desc" colspan="5" align="right">
					상품금액 : ${map.sumMoney}<%-- <fmt:formatNumber pattern="###,###,###" value="${map.sumMoney}"/> --%><br>
					배송료 : ${map.fee}<br>
					전체 예정금액 : ${map.allSum}<%--  <fmt:formatNumber pattern="###,###,###" value="${map.allSum}"/> --%>
				</td>
			</tr>
	</table>
	</c:when>
	<c:otherwise>
	<form name="cartform" id="cartform" method="post" action="/opalproject/cart/update"  >
		<!-- onsubmit="alert(${map.cust_cd}); alert(${map.cust_cd}); return update(${map.cust_cd}); return false; "  -->
		<table>
			<tr>
				<th>선택</th>
				<th>주문상품</th>
				<th>수량</th>
				<th>상품금액</th>
				<th>취소</th>
			</tr>
			<c:if test="${empty map.list}">
			<script>alert("test");</script>
			</c:if>
	
			
			<c:forEach var="row" items="${map.list}" varStatus="i">
		
			<tr>
				<td><label class="checkbox-label"><input type="checkbox" name="check" value="check">
				        <span class="checkbox-custom rectangular"></span></label></td>
				<td>${row.product_name}</td>
				<td><input type="number" style="width: 50px" name="cart_amount" value="${row.cart_amount}" min="1">
				<input type="hidden" name="product_cd" value="${row.product_cd}"></td>
				<td style="width: 150px" align="right"><%-- <fmt:formatNumber pattern="###,###,###" value="${row.money}"/> --%>${row.money}</td>
				<td> <a id="cartdelete" class="cancel" onclick="reset1(${row.cart_cd}); return false;"> 
				     <img src="/opalproject/resources/images/cancel.png" width="15" alt=""></a></td>
			</tr>
			</c:forEach>
			<tr>
			 <td class="check_desc" ></td>
			   <td class="check_desc" ></td>
			   <td class="check_desc" ></td>
				<td class="check_desc" colspan="5" align="right">
					상품금액 : ${map.sumMoney}<%-- <fmt:formatNumber pattern="###,###,###" value="${map.sumMoney}"/> --%><br>
					배송료 : ${map.fee}<br>
					전체 예정금액 : ${map.allSum}<%--  <fmt:formatNumber pattern="###,###,###" value="${map.allSum}"/> --%>
				</td>
			</tr>
		</table>
		<input type="hidden" name="count" value="${map.count}">
	<!-- 	<input type="submit" id="btnUpdate" value="장바구니 수정"> -->
	</form>
    </c:otherwise>
   </c:choose>
  </div>
  <div class="btn_wrapper">
  <div class="btn_inner">
  <button type="button" id="btnList" class="btn_back">상품목록</button>
  	<button type="button" id="btnPay"class="btn_pay">결제하기</button>

  </div>
</div>  
 
<script>
function reset1(cart_cd){
	//alert("111"+cart_cd);
	console.log(cart_cd);
	$.ajax({
		type :"get",// 전송 방식 
		url :"/opalproject/cart/delete",  //컨트롤러 사용할 때. 내가 보낼 데이터의 주소. 
		data : {"cart_cd" : cart_cd},
				
		dataType : "json",	
		success : function(data){	
			if(data=="1"){
				alert("장바구니 삭제됨");
				location.reload();
			}else{
				alert("장바구니 삭제 실패");
			}
		},
		error : function(){
			alert("ajax 실행 실패");
		}
	});
}
</script>
  
   
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