<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>

<!-- 20200519 희정 고혈압 wordcloud 출력 부분 css/js파일 시작  -->
<script
	src="resources/opalhighbloodpressure_files/htmlwidgets-1.5.1/htmlwidgets.js"></script>
<link
	href="resources/opalhighbloodpressure_files/wordcloud2-0.0.1/wordcloud.css"
	rel="stylesheet" />
<script
	src="resources/opalhighbloodpressure_files/wordcloud2-0.0.1/wordcloud2-all.js"></script>
<script
	src="resources/opalhighbloodpressure_files/wordcloud2-0.0.1/hover.js"></script>
<script
	src="resources/opalhighbloodpressure_files/wordcloud2-binding-0.2.1/wordcloud2.js"></script>

<!-- 20200519 희정 고혈압wordcloud 출력 부분 css/js파일  끝 -->

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

		<!-- 2020 05 14 희정 다른 질병으로 가는 버튼 추가  -->
		<h4 class="textcenter">
			다른 <span style="color: #8cd790">질병명</span>을 선택하시려면 버튼을 눌러주세요.
		</h4>
		<br>
		<div class="cont_opt1">
			<div class="buttonwrap">
				<button class="button" onclick="location.href='datasick1'">감기/기관지</button>
				<button class="selectbutton" onclick="location.href='datasick2'">고혈압</button>
				<button class="button" onclick="location.href='datasick3'">당뇨</button>
				<button class="button" onclick="location.href='datasick4'">위/식도</button>
				<button class="button" onclick="location.href='datasick5'">대장/췌장</button>
			</div>
		</div>
		<br>
		<!-- 2020 05 20 희정 고혈압 질병 관련 설명 시작-->
		<div class="titlewrap">
		<div class="title">
				<h1>고혈압</h1>
			</div>
		</div>
		<div class="boxwrap">
		<img src="resources/img/sickimg2.jpg"> <br><br>
		</div>
		<div class="boxwrap2">
	        <b>질환명 : [한글명] 고혈압 [영문명] Hypertension</b> <br> <b><img
				class="dlistimg" src="resources/img/listbox.png"> &nbsp;정의</b>
			<div class="greycol">심장은 펌프와 같이 우리 몸의 구석구석까지 산소와 영양분이 풍부한 혈액을
				보내는 중요한 기관입니다. 이러한 중요한 역할을 수행하기 위해서는 혈관 내에 압력이 필요한데, 이러한 압력을 혈압이라고
				합니다. 수축기 혈압은 심장이 수축하면서 혈액을 박출할 때의 혈압으로 최고 혈압에 해당하고, 이완기 혈압은 심장이 박동
				사이에 이완할 때의 혈압으로 최저 혈압에 해당합니다. 혈압을 기록할 때는 수축기 혈압을 먼저, 이완기 혈압은 그 다음에
				기록합니다. 가장 이상적인 혈압은 120/80mmHg 이하입니다. 하지만 어떤 이유로 혈관이 좁아지거나 심장이 한 번에
				내보내는 혈액의 양이 늘어나면 혈압이 높아지게 됩니다. 일반적으로 고혈압은 최고혈압 140이상, 최저혈압 90이상인 경우를
				뜻합니다.</div>
			<br> <b><img class="dlistimg"
				src="resources/img/listbox.png"> &nbsp;원인</b>
			<div class="greycol">고혈압의 90~95% 는 정확한 원인을 알지 못합니다. 원인을 알지 못하는
				경우를 본태성 혹은 일차성 고혈압이라고 합니다. 나머지 5~10%는 원인이 밝혀져 수술이나 특정약물에 의해 치료할 수 있는
				이차성 고혈압입니다.</div>
			<br> <b><img class="dlistimg"
				src="resources/img/listbox.png"> &nbsp;증상</b>
			<div class="greycol">고혈압은 뚜렷한 증상이 없어 무언의 살인자(silent killer)라고도
				하며, 합병증이 발생하여야 증상이 나타나는 경우가 많습니다. 일반적인 고혈압의 증상으로 알려진 두통, 어지럼증, 코피 등은
				고혈압 환자에서 나타날 수도 있으나 고혈압과 관계없이 나타나기도 합니다. 흔히 두통, 특히 뒷목덜미 부분의 통증을 고혈압의
				증상으로 많이 알고 있어서 뒷머리만 뻐근하여도 혈압때문이 아닐까 걱정을 하게 되는데, 두통이 고혈압으로 나타나는 경우는
				드물며 더욱이 두통의 정도에 따라 혈압의 높고 낮음을 알 수는 없습니다. 고혈압이 심하면 두통이 나타날 수도 있는데,
				아침에 일어날 때 뒷머리가 아프거나 뻐근한 것이 특징입니다.</div>
		</div>
		<!-- 2020 05 20 희정 고혈압 질병 관련 설명 끝-->
		
		
		<div class="titlewrap">
		<div class="title">
				<h2>고혈압에 좋은 음식에 대한 데이터 분석 결과</h2>
			</div>
		</div>
		<!-- 2020 05 18 희정 워드클라우드 출력부분 시작  -->
		<div id="htmlwidget_container" class="wordcloud">
			<div id="htmlwidget-73358140b8c61cfc0611"
				style="width: 800px; height: 550px;" class="wordcloud2 html-widget"></div>
		</div>
		<script type="application/json"
			data-for="htmlwidget-73358140b8c61cfc0611">{"x":{"word":["차","칼륨","비트","채소","양파","나트륨","마늘","과일","비타민","즙","영양제","현미","메밀","시금치","토마토","불포화지방산","섬유","식이","오메가","물","배","부추","칼슘","김치","녹두","단백질","버섯","호박","더덕","생선","천연","표고버섯","해조류","당근","미역","신선","야채","육류","치즈","콩","고구마","귤","등푸른생선","마그네슘","바나나","발효","베타인","삼","영지버섯","저염식","항산화","홍삼"],"freq":[39,36,30,30,26,21,20,18,15,14,12,12,11,11,11,9,9,9,9,8,8,8,8,7,7,7,7,7,6,6,6,6,6,5,5,5,5,5,5,5,4,4,4,4,4,4,4,4,4,4,4,4],"fontFamily":"Yang Rounded","fontWeight":"bold","color":"random-light","minSize":0,"weightFactor":4.61538461538461,"backgroundColor":"black","gridSize":0,"minRotation":-0.523598775598299,"maxRotation":-0.523598775598299,"shuffle":true,"rotateRatio":1,"shape":"circle","ellipticity":0.65,"figBase64":null,"hover":null},"evals":[],"jsHooks":{"render":[{"code":"function(el,x){\n                        console.log(123);\n                        if(!iii){\n                          window.location.reload();\n                          iii = False;\n\n                        }\n  }","data":null}]}}</script>
		<script type="application/htmlwidget-sizing"
			data-for="htmlwidget-73358140b8c61cfc0611">{"viewer":{"width":800,"height":550,"padding":0,"fill":true}}</script>
		<!-- 2020 05 18 희정 워드클라우드 출력부분 끝  -->
		
		<div class="titlewrap">
		<div class="title2">
				<h5>:: 고혈압에 좋은 음식에 관한 텍스트를 분석한 결과 :: 
				<br> 
				비트, 양파, 마늘, 현미, 메밀이 고혈압에 좋다는 결과가 나왔습니다.</h5>
			</div>
		</div>
	
		<div class="cont opt1">
			<script>
				var food = new Array('고혈압', '비트', '양파', '마늘', '현미', '메밀');
				for (var i = 1; i <= 5; i++) {
					document.write("<div class='box'>");
					document
							.write("<img class='sickfood' src='resources/img/sick2"+i+".PNG'>");
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
			<h4 id=changeword>비트에 대한 영양성분 데이터</h4>
			<img class="fooddata" id="changeimg1" src='resources/img/food21.png'>
			<br> <br>
			<h5>다른 음식에 대한 영양정보를 확인하시려면 아래 버튼을 눌러주세요.</h5>
			<br> <br>
			<button class="changeimg" onclick="changeimg(1)">비트</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(2)">양파</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(3)">마늘</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(4)">현미</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(5)">메밀</button>
			&nbsp;&nbsp;&nbsp;
		</div>
		<br> <br>
		<script>
			function changeimg(change) {
				if (change == 1) {
					document.getElementById("changeimg1").src = "resources/img/food21.png";
					document.getElementById("changeword").innerHTML = "비트에 대한 영양성분 데이터";
				} else if (change == 2) {
					document.getElementById("changeimg1").src = "resources/img/food22.png";
					document.getElementById("changeword").innerHTML = "양파에 대한 영양성분 데이터";
				} else if (change == 3) {
					document.getElementById("changeimg1").src = "resources/img/food23.png";
					document.getElementById("changeword").innerHTML = "마늘에 대한 영양성분 데이터";
				} else if (change == 4) {
					document.getElementById("changeimg1").src = "resources/img/food24.png";
					document.getElementById("changeword").innerHTML = "현미에 대한 영양성분 데이터";
				} else if (change == 5) {
					document.getElementById("changeimg1").src = "resources/img/food25.png";
					document.getElementById("changeword").innerHTML = "메밀에 대한 영양성분 데이터";
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