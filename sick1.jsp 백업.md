# sick1.jsp 백업

```
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
   prefix="sec"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.vo.GoodfoodVO"%>
<%@ page import="model.vo.BadfoodVO"%>
<%@ page import="model.vo.SickVO"%>
<%@ page import="java.util.List"%>
<html class="no-js" lang="">
<head>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>OPAL :: 결과 화면</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="resources/images/Opal.png">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/flexslider.css">
<link rel="stylesheet" href="resources/css/jquery.fancybox.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/ourcss/sick.css">
<link rel="stylesheet" href="resources/css/responsive.css">
<link rel="stylesheet" href="resources/css/animate.min.css">
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


   <!--20200526  희정 체크박스 value값 받아오기 시작  -->
   <%
   ArrayList<GoodfoodVO> goodlist = (ArrayList<GoodfoodVO>) request.getAttribute("goodlist");
   ArrayList<BadfoodVO> badlist = (ArrayList<BadfoodVO>) request.getAttribute("badlist");
   ArrayList<SickVO> sicklist = (ArrayList<SickVO>) request.getAttribute("sicklist");
%>
   <% String[] sick_cd =(String[])request.getAttribute("sick_cd"); %>
   <% boolean sick=true;%>
   <!--20200526  희정 체크박스 value값 받아오기 끝 -->

   <!--20200528 희정 선택 질병 출력부분 시작 -->
   <h2>
      고객님께서 선택하신 질병은 <br>
      <%for(int i=0; i<sick_cd.length;i++) {%>
      <%if(i==0) {%>
      <%=sicklist.get(i).getSick_name().toString() %>
      <%} else if(i>=1){%>,
      <%=sicklist.get(i).getSick_name().toString() %>
      <%} %>
      <%} %>
      입니다.
   </h2>
   <!--20200528 희정 선택 질병 출력부분 끝 -->
   <h3>
      <br> <%for(int i=0; i<sick_cd.length;i++) {%>
      <%if(i==0) {%>
      <%=sicklist.get(i).getSick_name().toString() %>
      <%} else if(i>=1){%>,
      <%=sicklist.get(i).getSick_name().toString() %>
      <%} %>
      <%} %>에 좋은 음식에 대해 소개해드리겠습니다. <br>
   </h3>
      <%String[] sickname ={"치주질환","기관지염/비염","고혈압","척추질환","식도/위/식이지장염","장염/결장염","피부염","당뇨병","백내장","무릎관절증","어지럼증","어깨병변"}; %>
      <!--20200529 희정 좋은 음식 출력 부분 시작 -->
      <% int goodnum=0; %>
      <div >      
            <%for(int j=0; j<goodlist.size();j++) {%>      
      <img class="good_food" src="<%=goodlist.get(j).getfood_img()%>">
      <span><%=goodlist.get(j).getfood_name()%></span>
      	<%} %>
 </div>
 
      
 
      <!--20200529 희정 좋은 음식 출력 부분 끝 -->
      
      
      <%System.out.println("-----------"+badlist.get(0).getSick_cd()); %>
         <!--20200529 희정 나쁜 음식 출력 부분 시작 -->
      <% int badnum=0; %>
      <div class="div_2">
      <h4 class="badfood_h4">
      <%for(int j=0; j<badlist.size();j++) {%>
         <%if(badlist.get(j).getSick_cd().equals("1")){ 
            if(sick){%>
                     <%=sickname[j]%>에 나쁜 음식입니다. <br>
                     <%sick=false;}%>
      </h4>               
      <img class="bad_food" src="<%=badlist.get(j).getfood_img()%>">
      <span class="span_1"><%=badlist.get(j).getfood_name()%></span>
       <%badnum++; if(badnum%4==0){%>
       </div><br><div class="div_1">
      <%}}}sick=true;%>
   </div>
      <!--20200529 희정 좋은 음식 출력 부분 끝 -->



<div class="foodwrapper">
<div class="foodwrapper_1">
<h5>질병을 다시 선택하시려면 질병 다시 선택하기 버튼을 눌러주세요.</h5>
   <button class="check_sumit" onclick="location.href='index'">질병 다시 선택하기</button>
   <form action="/opalproject/sick2" method="POST">
      <%for(int i = 0 ; i<sick_cd.length;i++){ %>
      <input type="hidden" name="sick_cd" value="<%=sick_cd[i]%>">
      <%} %>
      <h5>고객님께서 선택하신 모든 질병에 대한 정보를 종합하여 맟춤형 음식을 추천해드리겠습니다.</h5>
      <h5> 질병별 상관관계 분석하기 버튼을 클릭해주세요.</h5>
      <button class="check_sumit" >질병별 상관관계 분석하기</button>
      <input type="hidden" name="${_csrf.parameterName}"
         value="${_csrf.token}">
   </form>
</div>
</div>	
	
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
```

