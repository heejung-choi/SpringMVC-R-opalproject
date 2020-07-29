<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
 <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<title>main</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" href="resources/journal/bootstrap.css"
   media="screen">
<link rel="stylesheet" href="resources/_assets/css/custom.min.css">
<link rel="stylesheet" href="resources/ourcss/main.css">
<link href="resources/themes/2/js-image-slider.css" rel="stylesheet"
   type="text/css" />
<script src="resources/themes/2/js-image-slider.js"
   type="text/javascript"></script>
<link href="resources/ourcss/generic.css" rel="stylesheet"
   type="text/css" />

</head>

<body>



<!--  test -->
<p>현재시간 ${serverTime}</p>
	<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
    <font color="red">
        <p>Your login attempt was not successful due to <br/>
            ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
        <c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session"/>
    </font>
</c:if>
	<!-- 로그인중이 아닐 때에만 Login 버튼이 보임  -> taglib ( security/tags ) 때문에 가능 -->
	<sec:authorize access="isAnonymous()">
 		<a href='${pageContext.request.contextPath}/signin'>Login</a>
	</sec:authorize>
	
	<!-- 로그인 중일 경우에만 Logout 버튼이보임 -->
	<sec:authorize access="isAuthenticated()">
		<form action="${pageContext.request.contextPath}/logout" method="POST"> 
			<input id="logoutBtn" type="submit" value="Logout" />
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		</form>
	</sec:authorize>
<!-- test end -->




   <header>
      <div class="header_wrap">
         <div class="logo">
            <a href="/opalproject/main">
               <h1>
                  <img src="resources/images/Opal.png" width=150 alt
                     class="default_logo">
               </h1>
            </a>
         </div>

         <div class="top_nav">
            <div class="top_ul">
               <div class="bs-component1">
                  <nav class="navbar navbar-expand-lg navbar-light bg-light">
                     <button class="navbar-toggler" type="button"
                        data-toggle="collapse" data-target="#navbarColor03"
                        aria-controls="navbarColor03" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                     </button>

                     <div class="collapse navbar-collapse" id="navbarColor03">
                        <ul class="navbar-nav mr-auto">
                           <li class="nav-item"><a class="nav-link"
                              style="font-size: 12px;" href="/opalproject/signin">로그인</a></li>
                           <li class="nav-item"><a class="nav-link"
                              style="font-size: 12px;" href="/opalproject/signup">회원가입</a></li>
                           <li class="nav-item"><a class="nav-link"
                              style="font-size: 12px;" href="#">고객센터</a></li>
                        </ul>
                     </div>
                  </nav>
               </div>
            </div>
         </div>
   </header>
   <!--header 끝-->

   <div class="bs-component2">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
         <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarColor03" aria-controls="navbarColor03"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
         <!--건드리지 마세요.-->

         <div class="collapse navbar-collapse" id="navbarColor03"
            style="height: 100px">
            <div class="navbar-nav2">
               <ul class="navbar-nav mr-auto">
                  <li class="nav-item2"><a class="nav-link"
                     style="padding-right: 4rem;" href="/opalproject/about">소개</a></li>
                  <li class="nav-item2"><a class="nav-link"
                     style="padding-right: 4rem;" href="/opalproject/datamain">질병DATA</a></li>
                  <li class="nav-item2"><a class="nav-link"
                     style="padding-right: 4rem;" href="/opalproject/goods">농산물구매</a></li>
                  <li class="nav-item2"><a class="nav-link"
                     style="padding-right: 4rem;" href="/opalproject/markets">농가별구매</a></li>
                  <li class="nav-item2"><a class="nav-link"
                     style="padding-right: 4rem;" href="#">레시피</a></li>
                  <li class="nav-item2"><a class="nav-link"
                     style="padding-right: 4rem;" href="#">식단추천</a></li>
                  <li class="nav-item2"><a class="nav-link"
                     style="padding-right: 4rem;" href="#">정기결제</a></li>
                     					<li class="nav-item2"><a class="nav-link" style="padding-right: 4rem;" href="/opalproject/goodsInsertForm">상품등록</a></li>
                     
               </ul>
            </div>
         </div>
      </nav>
   </div>
   <!--main navbar 끝-->

   <section class="main">

      <div id="sliderFrame">
         <div id="slider">
               <img src="resources/images/main1.jpg" alt="" />
               <img src="resources/images/main_s2.png" alt="" />
               <img src="resources/images/main_s3.png" alt="" />
               <img src="resources/images/main_s4.png" alt="" />
         </div>
         <!--thumbnails-->
         <div id="thumbs">
            <div class="thumb">
               <div class="frame">
                  <img src="resources/images/main1.jpg" />
               </div>
               <div class="thumb-content">
                  <p>건강한 식생활</p>
                  노력하면 되는 걸까?
               </div>
               <div style="clear: both;"></div>
            </div>
            <div class="thumb">
               <div class="frame">
                  <img src="resources/images/main_s2.png" />
               </div>
               <div class="thumb-content">
                  <p>흡연률과 비만</p>
                  흡연률은 감소했지만 비만은 증가했다.
               </div>
               <div style="clear: both;"></div>
            </div>
            <div class="thumb">
               <div class="frame">
                  <img src="resources/images/main_s3.png" />
               </div>
               <div class="thumb-content">
                  <p>콜레스테롤과 신체활동</p>
                  콜레스테롤 유병률은 증가했지만 신체활동은 감소했다.
               </div>
               <div style="clear: both;"></div>
            </div>
               <div class="thumb">
               <div class="frame">
                  <img src="resources/images/main_s4.png" />
               </div>
               <div class="thumb-content">
                  <p>콜레스테롤과 신체활동</p>
                  콜레스테롤 유병률은 증가했지만 신체활동은 감소했다.
               </div>
               <div style="clear: both;"></div>
            </div>
         </div>
         <!--clear above float:left elements. It is required if above #slider is styled as float:left. -->
         <div style="clear: both; height: 0;"></div>
      </div>
      <hr>
      <div class="map">
         <div class="map_inner">
         
         <img src="resources/images/mapimsi.png">
         
         </div>
      </div>
      <!--맵 끝-->

      <hr>

      <div class="word_ranking">
         <div class="word_inner">여기 워드 클라우드</div>
         <!--워드 클라우드 끝-->
         <div class="ranking_inner">여기 랭킹</div>
         <!--랭킹 끝-->
      </div>
      <!--워드 클라우드 박스 끝-->



   </section>
   <!--section 끝-->

   <footer>
      <h3>홈페이지 정보(바닥 글)</h3>
   </footer>
   <!--footer 끝-->

</body>


<script src="resources/_vendor/jquery/dist/jquery.min.js"></script>
<script src="resources/_vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="resources/_vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="resources/_assets/js/custom.js"></script>

</html>