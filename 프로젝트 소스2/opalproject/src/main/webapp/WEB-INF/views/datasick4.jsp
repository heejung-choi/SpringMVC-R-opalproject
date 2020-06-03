<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- 20200520 희정 당뇨 wordcloud 출력 부분 css/js파일 시작  -->
<script
	src="resources/opalstomach_files/htmlwidgets-1.5.1/htmlwidgets.js"></script>
<link href="resources/opalstomach_files/wordcloud2-0.0.1/wordcloud.css"
	rel="stylesheet" />
<script
	src="resources/opalstomach_files/wordcloud2-0.0.1/wordcloud2-all.js"></script>
<script src="resources/opalstomach_files/wordcloud2-0.0.1/hover.js"></script>
<script
	src="resources/opalstomach_files/wordcloud2-binding-0.2.1/wordcloud2.js"></script>
<!-- 20200520 희정 당뇨 wordcloud 출력 부분 css/js파일  끝 -->

<meta>
<title>질병 data 페이지</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" href="resources/journal/bootstrap.css"
	media="screen">
<link rel="stylesheet" href="resources/_assets/css/custom.min.css">
<link rel="stylesheet" href="resources/ourcss/main.css">
<link rel="stylesheet" href="resources/ourcss/datasick.css">
</head>
<body>
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

	<section id="datasick">
		<!-- 여기에 만든 컨텐츠를 넣으면 될 것 같다. -->
		<!-- Main Controller 내부에 존재하는 datamain 메서드. -->
		<!-- 길어진다면 메서드를 분할해가 사용해도 된다. -->
		<!-- 20200514 jung 질병 데이터 페이지 구성 -->
			<h4 class="textcenter">
			다른 <span style="color: #8cd790">질병명</span>을 선택하시려면 버튼을 눌러주세요.
		</h4>
		<br>
		<div class="cont_opt1">
			<div class="buttonwrap">
				<button class="button" onclick="location.href='datasick1'">감기/기관지</button>
				<button class="button" onclick="location.href='datasick2'">고혈압</button>
				<button class="button" onclick="location.href='datasick3'">당뇨</button>
				<button class="selectbutton" onclick="location.href='datasick4'">위/식도</button>
				<button class="button" onclick="location.href='datasick5'">대장/췌장</button>
			</div>
		</div>
		<br>
		<!-- 2020 05 20 희정 위염 질병 관련 설명 시작-->
		<div class="titlewrap">
		    <div class="title">
				<h1>위염</h1>
			</div>
		</div>
		<div class="boxwrap">
		   <img class="sickimg" src="resources/img/sickimg4.png"> <br><br>
		</div>
		<div class="boxwrap2">
			<b>질환명 : [한글명] 위염 [영문명] Gastritis</b> <br> <b><img
				class="dlistimg" src="resources/img/listbox.png"> &nbsp;정의</b>
			<div class="greycol">위염이란 위 점막의 손상이나 감염에 대한 광범위한 혹은 국소적인 반응을
				말합니다. 위염은 시간적 개념에 따라 급성 위염과 만성위염으로 나뉩니다. 또한 내시경적 소견에 따라 발적성 위염, 미란성
				위염, 출혈성 위염, 담즙 역류성 위염, 만성 표재성 위염, 위축성 위염, 화생성 위염, 비후성 위염 등으로 분류되기도
				합니다.</div>
			<br> <b><img class="dlistimg"
				src="resources/img/listbox.png"> &nbsp;원인</b>
			<div class="greycol">● 급성위염 <br>- 점막의 방어기전이 세균이나 자극성 물질(헬리코박터균,
				기생충, 약물, 강산, 강알칼리용액 등)에 의해 손상되었을 때 발생합니다. 혹은 심한 스트레스도 원인이 됩니다.<br> ●
				만성위염 <br>- 많은 경우 위염의 직접적인 원인이 되는 Helicobacter pylori 감염과 관련되어 있습니다. 이의
				침입은 주로 오염된 식품과 물을 통해서 이루어지며, 분변-구강경로를 거쳐 감염됩니다. 또는 약물, 흡연, 담증 역류 등에
				의해서도 발생합니다.</div>
			<br> <b><img class="dlistimg"
				src="resources/img/listbox.png"> &nbsp;증상</b>
			<div class="greycol">● 급성위염 <br>- 식욕부진, 오심, 구토, 복부경련, 설사, 상복부 통증, 열
				등의 증상과 무통성 위장관 출혈이 있을 수도 있습니다. <br>● 만성위염<br> - 대부분의 경우 무증상 상태로 남아 있습니다. 증상을
				호소하는 경우에도 단지 일반적인 소화불량 증상만을 나타냅니다.</div>
		</div>
		<!-- 2020 05 20 희정 위염 질병 관련 설명 끝-->
		<br>
		<div class="titlewrap">
		<div class="title">
			<h2>위/식도에 좋은 음식에 대한 데이터 분석 결과</h2>
		</div>
		</div>
		<!-- 2020 05 20  희정 당뇨 워드클라우드 출력부분 시작  -->
		<div id="htmlwidget_container" class="wordcloud">
			<div id="htmlwidget-0805ca8da77bfa9de379"
				style="width: 800px; height: 550px;" class="wordcloud2 html-widget"></div>
		</div>
		<script type="application/json"
			data-for="htmlwidget-0805ca8da77bfa9de379">{"x":{"word":["양배추","비타민","채소","토마토","민들레","과일","버섯","연근","대추","브로콜리","감자","땅콩","현미","야채","비타민가","비타민는","주스","칼슘","나물","농축액","달걀","마늘","사과","알로에","약초","유산균","호박","홍삼","당근","율무","노루궁뎅이버섯","두부","바나나","비트","샐러드","약재","옥수수","인삼","전복","차가버섯","케일"],"freq":[211,36,22,18,15,14,14,13,12,11,10,10,9,8,7,7,7,7,6,6,6,6,6,6,6,6,6,6,5,5,4,4,4,4,4,4,4,4,4,4,4],"fontFamily":"Yang Rounded","fontWeight":"bold","color":"random-light","minSize":0,"weightFactor":0.853080568720379,"backgroundColor":"black","gridSize":0,"minRotation":-0.523598775598299,"maxRotation":-0.523598775598299,"shuffle":true,"rotateRatio":1,"shape":"circle","ellipticity":0.65,"figBase64":null,"hover":null},"evals":[],"jsHooks":{"render":[{"code":"function(el,x){\n                        console.log(123);\n                        if(!iii){\n                          window.location.reload();\n                          iii = False;\n\n                        }\n  }","data":null}]}}</script>
		<script type="application/htmlwidget-sizing"
			data-for="htmlwidget-0805ca8da77bfa9de379">{"viewer":{"width":800,"height":550,"padding":0,"fill":true}}</script>

		<!-- 2020 05 20 희정 당뇨 워드클라우드 출력부분 끝  -->
		
		<div class="titlewrap">
		<div class="title2">
				<h5>:: 위/식도에 좋은 음식에 관한 텍스트를 분석한 결과  :: 
				<br> 
				양배추, 토마토, 민들레, 버섯, 연근이 위/식도에 좋다는 결과가 나왔습니다.</h5>
			</div>
		</div>
		
		<div class="cont opt1">
			<script>
				var food = new Array('위/식도', '양배추', '토마토', '민들레', '버섯', '연근');
				for (var i = 1; i <= 5; i++) {
					document.write("<div class='box'>");
					document
							.write("<img class='sickfood' src='resources/img/sick4"+i+".PNG'>");
					document.write("<br>");
					document.write("<br>");
					document.write("<h5 class='textcenter'>" + food[i]
							+ "</h5>");
					document.write("</div>");

				}
			</script>
		</div>
		<!-- 20200519 -->
		<div class="textcenter">
			<h4 id=changeword>양배추에 대한 영양성분 데이터</h4>
			<img class="fooddata" id="changeimg1" src='resources/img/food41.png'>
			<br> <br>
			<h5>다른 음식에 대한 영양정보를 확인하시려면 아래 버튼을 눌러주세요.</h5>
			<br> <br>
			<button class="changeimg" onclick="changeimg(1)">양배추</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(2)">토마토</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(3)">민들레</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(4)">버섯</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(5)">연근</button>
			&nbsp;&nbsp;&nbsp;
		</div>
		<br> <br>
		<script>
			function changeimg(change) {
				if (change == 1) {
					document.getElementById("changeimg1").src = "resources/img/food41.png";
					document.getElementById("changeword").innerHTML = "양배추에 대한 영양성분 데이터";
				} else if (change == 2) {
					document.getElementById("changeimg1").src = "resources/img/food42.png";
					document.getElementById("changeword").innerHTML = "토마토에 대한 영양성분 데이터";
				} else if (change == 3) {
					document.getElementById("changeimg1").src = "resources/img/food43.png";
					document.getElementById("changeword").innerHTML = "민들레에 대한 영양성분 데이터";
				} else if (change == 4) {
					document.getElementById("changeimg1").src = "resources/img/food44.png";
					document.getElementById("changeword").innerHTML = "버섯에 대한 영양성분 데이터";
				} else if (change == 5) {
					document.getElementById("changeimg1").src = "resources/img/food45.png";
					document.getElementById("changeword").innerHTML = "연근에 대한 영양성분 데이터";
				} else {
					console.log("변경 오류")
				}
			}
		</script>

	</section>

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