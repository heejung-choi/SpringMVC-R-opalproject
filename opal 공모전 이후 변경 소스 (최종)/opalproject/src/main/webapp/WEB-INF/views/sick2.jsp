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
<title>OPAL :: 분석 화면</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="resources/images/Opal.png">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/flexslider.css">
<link rel="stylesheet" href="resources/css/jquery.fancybox.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/ourcss/sick2.css">
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

   <!--20200526  희정 체크박스 value값 받아오기  -->
   <%
      ArrayList<GoodfoodVO> goodlist = (ArrayList<GoodfoodVO>) request.getAttribute("goodlist");
      ArrayList<BadfoodVO> badlist = (ArrayList<BadfoodVO>) request.getAttribute("badlist");
      ArrayList<SickVO> sicklist = (ArrayList<SickVO>) request.getAttribute("sicklist");
   %>
   <% String[] sick_cd =(String[])request.getAttribute("sick_cd"); %>
   <!--20200528 희정 좋은 음식, 나쁜음식 교차 구문  -->
   <h2>교차 분석 결과</h2>
      <h3>
      고객님께서 선택하신 질병은
      <%for(int i=0; i<sick_cd.length;i++) {%>
      <%if(i==0) {%>
      <%=sicklist.get(i).getSick_name().toString() %>
      <%} else if(i>=1){%>,
      <%=sicklist.get(i).getSick_name().toString() %>
      <%} %>
      <%} %>
      입니다. <br> 해당 질병을 교차 분석하여 고객님 건강에 좋은 맞춤형 음식을 추천해드리겠습니다.
      
   </h3>
   <!--20200528 희정 선택 질병 출력부분 끝 -->
      
      <%
/*          System.out.println("---------------");
         System.out.println("goodlist 사이즈는?:" + goodlist.size());
         System.out.println("badlist 사이즈는?:" + badlist.size());
         System.out.println("goodlist 값"+goodlist.toString());
         System.out.println("badlist 값"+badlist.toString()); */
      %>
      
      <%
         List<String> listA = new ArrayList<String>();
         List<String> listB = new ArrayList<String>();
         List<String> listC = new ArrayList<String>();
         List<String> listD = new ArrayList<String>();

         for (int i = 0; i <= goodlist.size() - 1; i++) {
            listA.add(i, goodlist.get(i).getfood_cd().toString());
         }

         for (int i = 0; i <= badlist.size() - 1; i++) {
            listB.add(i, badlist.get(i).getfood_cd().toString());
         }
         boolean flag = true;
         for (int i = 0; i <= listA.size() - 1; i++) {
            for (int j = 0; j <= listB.size() - 1; j++) {
               if (listA.get(i).equals(listB.get(j))) {   
                  flag = false;
                  break;
               }
            }
            if (flag) {
               listC.add(listA.get(i));            
            }
            flag = true;
         }

         System.out.println("---------------------");
         boolean flag2 = true;
         for (int i = 0; i <= listB.size() - 1; i++) {
            for (int j = 0; j <= listA.size() - 1; j++) {
               if (listA.get(j).equals(listB.get(i))) {
/*                   System.out.println("A의 값은?" + listA.get(j));
                  System.out.println("B의 값은" + listB.get(i)); */
                  flag2 = false;
                  break;
               }
            }
            if (flag2) {
               listD.add(listB.get(i));            
            }
            flag2 = true;
         }
         
/*          System.out.println("listA?" + listA.toString());////////////////////////////////////////////////////////////
         System.out.println("listB?" + listB.toString());
         System.out.println("listC?" + listC.toString());
         System.out.println("listD?" + listD.toString());
         System.out.println("goodlist?" + goodlist.toString()); */

         ArrayList<Integer> delgoodList = new ArrayList<>();
         boolean goodFlag = true;
         for (int i = 0; i <= goodlist.size() - 1; i++) {
            for (int j = 0; j <= listC.size() - 1; j++) {
               if (goodlist.get(i).getfood_cd().toString().equals(listC.get(j))) {
                  goodFlag = false;
                  break;
               }
            }
            if (goodFlag) {

               delgoodList.add(i);
            }
            goodFlag = true;
         }
/*          System.out.println("golist테스트" + goodlist.get(0).toString());
         System.out.println("delgoodList는?" + delgoodList.toString()); */

         ArrayList<Integer> delbadList = new ArrayList<>();
         boolean badFlag = true;
         for (int i = 0; i <= badlist.size() - 1; i++) {
            for (int j = 0; j <= listD.size() - 1; j++) {
               if (badlist.get(i).getfood_cd().toString().equals(listD.get(j))) {
                  badFlag = false;
                  break;
               }
            }
            if (badFlag) {
               delbadList.add(i);
            }
            badFlag = true;
         }

/*          System.out.println("delbadList는?" + delbadList.toString()); */

         for (int i = 0; i < delgoodList.size(); i++) {
            int delIndex = delgoodList.get(i);
            goodlist.remove(delIndex - i);
            System.out.println("삭제된 인덱스" + (delIndex - i));
         }
      %>

      <%
         /* System.out.println("goodlist?" + goodlist.toString()); */
      %>
      
      <h3>좋은음식</h3>
       
      <div class="wrapper">
      <div id="columns">
      <%
         for (GoodfoodVO vo : goodlist) {
      %>
      <div class="card">
      <img class="img_1" src="<%=vo.getfood_img()%>">
      <br>
      <%=vo.getfood_name()%>
      </div>
      <%
         }
      %>
      </div>
     </div>
      <h3>나쁜음식</h3>
      <div class="wrapper">
      <div id="columns">
      <%
         for (BadfoodVO vo : badlist) {
      %>
      <div class="card">      
      <img class="img_1" src="<%=vo.getfood_img()%>">
      <br>
      <%=vo.getfood_name()%>
      </div>
      <%
         }
      %>
      </div>
     </div>
   
   <h3>질병을 다시 선택하시려면 질병 다시 선택하기 버튼을 눌러주세요.</h3>
   <div class="foodwrapper">
   <button class="check_sumit" onclick="location.href='index'">질병 다시 선택하기</button>
   </div>
   
   <div class="foodwrapper2">
      <form action="/opalproject/goods" method="POST">
      <%
         for (GoodfoodVO vo : goodlist) {
      %>
      <input type="hidden" name="food_cd" value="<%=vo.getfood_cd()%>">      
      <%  
         }      
      %>
      <button class="check_sumit"> 내 건강에 좋은 음식 사러가기</button>
      <input type="hidden" name="${_csrf.parameterName}"
         value="${_csrf.token}">
   </form>	
  </div>
   
   <div class="foodwrapper2">
      <form action="/opalproject/sick3" method="POST">
      <%
         for (GoodfoodVO vo : goodlist) {
      %>
      <input type="hidden" name="food_cd" value="<%=vo.getfood_cd()%>">      
      <%
   
         }
      
      System.out.println("굳리"+goodlist.get(0));
      System.out.println("굳리"+goodlist.get(1));
      System.out.println("굳리"+goodlist.get(2));
      System.out.println("굳리"+goodlist.get(3));
      System.out.println("굳리"+goodlist.get(4));
      System.out.println("굳리"+goodlist.get(5));
      System.out.println("굳리"+goodlist.get(6));
      %>
      <button class="check_sumit"> 음식 영양정보 확인하기 </button>
      <input type="hidden" name="${_csrf.parameterName}"
         value="${_csrf.token}">
   </form>	
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