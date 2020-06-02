<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>

<!-- 20200518 희정 wordcloud 출력 부분 css/js파일 시작  -->
<script src="resources/opalcold_files/htmlwidgets-1.5.1/htmlwidgets.js"></script>
<link href="resources/opalcold_files/wordcloud2-0.0.1/wordcloud.css"
	rel="stylesheet" />
<script
	src="resources/opalcold_files/wordcloud2-0.0.1/wordcloud2-all.js"></script>
<script src="resources/opalcold_files/wordcloud2-0.0.1/hover.js"></script>
<script
	src="resources/opalcold_files/wordcloud2-binding-0.2.1/wordcloud2.js"></script>
<!-- 20200518 희정 wordcloud 출력 부분 css/js파일  끝 -->

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
		<h4 class="textcenter">다른 <span style="color: #8cd790">질병명</span><span style="color: #333030">을 선택하시려면 버튼을 눌러주세요.</h4>
		<br>
		<!-- 2020 05 14 희정 다른 질병으로 가는 버튼 추가  -->
		<div class="cont_opt1">
			<div class="buttonwrap">
				<button class="selectbutton" onclick="location.href='datasick1'">감기/기관지</button>
				<button class="button" onclick="location.href='datasick2'">고혈압</button>
				<button class="button" onclick="location.href='datasick3'">당뇨</button>
				<button class="button" onclick="location.href='datasick4'">위/식도</button>
				<button class="button" onclick="location.href='datasick5'">대장/췌장</button>
			</div>
		</div>
		<br> <br>

		
		
		<!-- 2020 05 20 희정 급성기관지염 질병 관련 설명 시작-->
		<div class="titlewrap">
		<div class="title">
				<h1>급성기관지염</h1>
			</div>
		</div>
		<div class="boxwrap">
		<img src="resources/img/sickimg1.jpg"> <br><br>
		</div>
		<div class="boxwrap2">
		<b>질환명: [한글명] 급성 기관지염 [영문명] Acute bronchitis</b> <br> <b><img
				class="dlistimg" src="resources/img/listbox.png"> &nbsp;정의</b>
			<div class="greycol">급성 기관지염은 기관 및 기관지 점막의 염증으로 점액이 많아지는 질환입니다.
				주로 소아에게 발생합니다.</div>
			<br> <b><img class="dlistimg"
				src="resources/img/listbox.png"> &nbsp;원인</b>
			<div class="greycol">급성 기관지염은 주로 상기도감염(감기) 후에 발생하며, 대부분 바이러스의
				감염에 의해 발생하지만, 세균 감염에 의해서도 발생할 수 있습니다. 바이러스의 경우 바이러스에 감염된 사람과 접촉하는
				경우나 호흡기를 통해 전파될 수 있습니다.</div>
			<br> <b><img class="dlistimg"
				src="resources/img/listbox.png"> &nbsp;증상</b>
			<div class="greycol">기관지 염증 반응으로 객담이 생기고, 기도가 과민해져 기침이 1~3주
				지속되며 때로는 발열, 권태감이 동반됩니다. 영유아에서는 기침을 발작적으로 하여 구토를 하는 수가 있으며, 기침에 의한
				가슴 통증을 호소하기도 합니다.</div>
		</div>
		<!-- 2020 05 20 희정 급성기관지염 질병 관련 설명 끝-->
		<div class="titlewrap">
		<div class="title">
				<h2>감기/기관지에 좋은 음식에 대한 데이터 분석 결과</h2>
			</div>
		</div>
		
		<!-- 2020 05 20 희정 급성기관지염 질병 관련 설명 끝-->
		
		<!-- 2020 05 18 희정 워드클라우드 출력부분 시작  -->
		<div id="htmlwidget_container" class="wordcloud">
			<div class="wordcloud2">
				<div id="htmlwidget-8be566e406ab381ca717"
					style="width: 800px; height: 550px;" class="wordcloud2 html-widget"></div>
			</div>
		</div>
		<script type="application/json"
			data-for="htmlwidget-8be566e406ab381ca717">{"x":{"word":["도라지","차","비타민","배","생강","즙","물","과일","무","청","마늘","레몬","수세미","약재","천연","당근","사포닌","콩나물","하루","꿀","대파","더덕","삼","약용식물","오메가","한방","껍질","대추","약초","홍삼","귤","도라지배즙","모과","양파","오미자","미네랄","민들레","설탕","연근","영양소","자연","채소","토마토","항산화","계란","식혜","인삼","칼슘","콩","폴리스","고구마","고등어","단백질","배즙","버섯","블루베리","올리브","호두","호박"],"freq":[98,72,55,53,45,31,26,21,16,16,14,11,11,11,11,10,10,10,10,9,9,9,9,9,9,9,8,8,8,8,7,7,7,7,7,6,6,6,6,6,6,6,6,6,5,5,5,5,5,5,4,4,4,4,4,4,4,4,4],"fontFamily":"Yang Rounded","fontWeight":"bold","color":"random-light","minSize":0,"weightFactor":1.83673469387755,"backgroundColor":"black","gridSize":0,"minRotation":-0.523598775598299,"maxRotation":-0.523598775598299,"shuffle":true,"rotateRatio":1,"shape":"circle","ellipticity":0.65,"figBase64":null,"hover":null},"evals":[],"jsHooks":{"render":[{"code":"function(el,x){\n                        console.log(123);\n                        if(!iii){\n                          window.location.reload();\n                          iii = False;\n\n                        }\n  }","data":null}]}}</script>
		<script type="application/htmlwidget-sizing"
			data-for="htmlwidget-8be566e406ab381ca717"> {"viewer":{"width":1,"height":1,"padding":0,"fill":true}}</script>
		<!-- 2020 05 18 희정 워드클라우드 출력부분 끝  -->	
		
		<div class="titlewrap">
		<div class="title2">
				<h5>:: 감기/ 기관지에 좋은 음식에 관한 텍스트를 분석한 결과 :: <br> 도라지, 배, 생강, 무, 마늘 감기/기관지에 좋다는 결과가 나왔습니다.</h5>
			</div>
		</div>
		
		 <br>
	
		<div class="cont opt1">
			<script>
				var food = new Array('감기/기관지', '도라지', '배', '생강', '무', '마늘');
				for (var i = 1; i <= 5; i++) {
					document.write("<div class='box'>");
					document
							.write("<img class='sickfood' src='resources/img/sick1"+i+".PNG'>");
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
			<h4 id=changeword>도라지에 대한 영양성분 데이터</h4>
			<img class="fooddata" id="changeimg1" src='resources/img/food11.png'>
			<br> <br>
			<h5>다른 음식에 대한 <span style="color: #8cd790">영양정보</span><span style="color: #333030">를 확인하시려면 아래 버튼을 눌러주세요.</h5>
			<br> <br>
			<button class="changeimg" onclick="changeimg(1)">도라지</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(2)">배</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(3)">생강</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(4)">무</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(5)">마늘</button>
			&nbsp;&nbsp;&nbsp;
		</div>
		<br> <br>
		<script>
			function changeimg(change) {
				if (change == 1) {
					document.getElementById("changeimg1").src = "resources/img/food11.png";
					document.getElementById("changeword").innerHTML = "도라지에 대한 영양성분 데이터";
				} else if (change == 2) {
					document.getElementById("changeimg1").src = "resources/img/food12.png";
					document.getElementById("changeword").innerHTML = "배에 대한 영양성분 데이터";
				} else if (change == 3) {
					document.getElementById("changeimg1").src = "resources/img/food13.png";
					document.getElementById("changeword").innerHTML = "생강에 대한 영양성분 데이터";
				} else if (change == 4) {
					document.getElementById("changeimg1").src = "resources/img/food14.png";
					document.getElementById("changeword").innerHTML = "무에 대한 영양성분 데이터";
				} else if (change == 5) {
					document.getElementById("changeimg1").src = "resources/img/food15.png";
					document.getElementById("changeword").innerHTML = "마늘에 대한 영양성분 데이터";
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