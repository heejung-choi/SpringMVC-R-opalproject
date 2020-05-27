<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>

<!-- 20200519 희정 당뇨 wordcloud 출력 부분 css/js파일 시작  -->
<script
	src="resources/opalenteritis_T_files/htmlwidgets-1.5.1/htmlwidgets.js"></script>
<link
	href="resources/opalenteritis_T_files/wordcloud2-0.0.1/wordcloud.css"
	rel="stylesheet" />
<script
	src="resources/opalenteritis_T_files/wordcloud2-0.0.1/wordcloud2-all.js"></script>
<script src="resources/opalenteritis_T_files/wordcloud2-0.0.1/hover.js"></script>
<script
	src="resources/opalenteritis_T_files/wordcloud2-binding-0.2.1/wordcloud2.js"></script>

<!-- 20200519 희정 당뇨 wordcloud 출력 부분 css/js파일  끝 -->

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
				<button class="button" onclick="location.href='datasick4'">위/식도</button>
				<button class="selectbutton" onclick="location.href='datasick5'">대장/췌장</button>
			</div>
		</div>
		<br>
		<!-- 2020 05 20 희정 장염 질병 관련 설명 시작-->
		<div class="titlewrap">
		    <div class="title">
				<h1>대장염</h1>
			</div>
		</div>
		<div class="boxwrap">
		   <img src="resources/img/sickimg5.png"> <br><br>
		</div>
		<div class="boxwrap2">
			<b>질환명 : [한글명] 대장염 [영문명] colitis</b> <br> <b><img
				class="dlistimg" src="resources/img/listbox.png"> &nbsp;정의</b>
			<div class="greycol">대장에 염증이 발생한 상태를 대장염이라고 합니다.</div>
			<br> <b><img class="dlistimg"
				src="resources/img/listbox.png"> &nbsp;원인</b>
			<div class="greycol">원인은 매우 다양합니다. 감염성 장염의 경우 여러 바이러스(노로 바이러스,
				로타 바이러스), 세균(콜레라, 대장균, 이질, 장티푸스, 에르시니아, 캠필로박터), 원충(아메바) 등이 있습니다.
				비감염성 대장염에는 염증성 장질환(크론병, 궤양성 대장염), 방사선성 대장염, 허혈성 대장염, 베체트 장염, 약제유발성
				장염이 있으며, 이 질환들에 대한 원인으로는 방사선 노출, 장으로 가는 혈류의 감소, 약물 복용, 기타 기저질환 등이
				있습니다.</div>
			<br> <b><img class="dlistimg"
				src="resources/img/listbox.png"> &nbsp;증상</b>
			<div class="greycol">원인마다 조금씩 다르나 공통적인 증상으로는 복통, 설사가 있습니다. 그
				외에는 발열, 혈변, 구역, 구토, 체중 감소 등이 있을 수 있습니다.</div>
		</div>
		<!-- 2020 05 20 희정 장염 질병 관련 설명 끝-->
		<br>
		<div class="titlewrap">
		<div class="title">
			<h2>대장/췌장에 좋은 음식에 대한 데이터 분석 결과</h2>
		</div>
		</div>
		<!-- 2020 05 18 희정 워드클라우드 출력부분 시작  -->
		<div id="htmlwidget_container" class="wordcloud">
			<div id="htmlwidget-a7ba61ea0beb500ce859"
				style="width: 800px; height: 550px;" class="wordcloud2 html-widget"></div>
		</div>
		<script type="application/json"
			data-for="htmlwidget-a7ba61ea0beb500ce859">{"x":{"word":["양배추","마늘","채소","효소","과일","고구마","브로콜리","비타민","섬유질","시금치","육류","사과","미역","버섯","영양분","단백질","유산균","현미","비트","영양소","고기","카레","해조류","된장","반찬","브로콜리는","비타민가","양파","두부","엽산","토마토","고추","나물","당근","비타민와","생선","야채","청국장","호박","비타민는","셀레늄","오메가","표고버섯"],"freq":[70,31,28,27,23,21,15,15,14,14,14,13,12,12,12,11,11,10,9,9,8,8,8,7,7,7,7,7,6,6,6,5,5,5,5,5,5,5,5,4,4,4,4],"fontFamily":"Yang Rounded","fontWeight":"bold","color":"random-light","minSize":0.5,"weightFactor":2.57142857142857,"backgroundColor":"black","gridSize":0,"minRotation":-0.785398163397448,"maxRotation":0.785398163397448,"shuffle":true,"rotateRatio":0,"shape":"triangle-forward","ellipticity":0.65,"figBase64":null,"hover":null},"evals":[],"jsHooks":{"render":[{"code":"function(el,x){\n                        console.log(123);\n                        if(!iii){\n                          window.location.reload();\n                          iii = False;\n\n                        }\n  }","data":null}]}}</script>
		<script type="application/htmlwidget-sizing"
			data-for="htmlwidget-a7ba61ea0beb500ce859">{"viewer":{"width":800,"height":550,"padding":0,"fill":true}}</script>
		<!-- 2020 05 18 희정 워드클라우드 출력부분 끝  -->
		
		<div class="titlewrap">
		<div class="title2">
				<h5>:: 대장/췌장에 좋은 음식에 관한 텍스트를 분석한 결과  :: 
				<br> 
				양배추, 마늘, 고구마, 브로콜리, 시금치가 대장/췌장에 좋다는 결과가 나왔습니다.</h5>
			</div>
		</div>
	
		<div class="cont opt1">
			<script>
				var food = new Array('대장/췌장', '양배추', '마늘', '고구마', '브로콜리', '시금치');
				for (var i = 1; i <= 5; i++) {
					document.write("<div class='box'>");
					document
							.write("<img class='sickfood' src='resources/img/sick5"+i+".PNG'>");
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
			<img class="fooddata" id="changeimg1" src='resources/img/food51.png'>
			<br> <br>
			<h5>다른 음식에 대한 영양정보를 확인하시려면 아래 버튼을 눌러주세요.</h5>
			<br> <br>
			<button class="changeimg" onclick="changeimg(1)">양배추</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(2)">마늘</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(3)">고구마</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(4)">브로콜리</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(5)">시금치</button>
			&nbsp;&nbsp;&nbsp;
		</div>
		<script>
			function changeimg(change) {
				if (change == 1) {
					document.getElementById("changeimg1").src = "resources/img/food51.png";
					document.getElementById("changeword").innerHTML = "양배추에 대한 영양성분 데이터";
				} else if (change == 2) {
					document.getElementById("changeimg1").src = "resources/img/food52.png";
					document.getElementById("changeword").innerHTML = "마늘에 대한 영양성분 데이터";
				} else if (change == 3) {
					document.getElementById("changeimg1").src = "resources/img/food53.png";
					document.getElementById("changeword").innerHTML = "고구마에 대한 영양성분 데이터";
				} else if (change == 4) {
					document.getElementById("changeimg1").src = "resources/img/food54.png";
					document.getElementById("changeword").innerHTML = "브로콜리에 대한 영양성분 데이터";
				} else if (change == 5) {
					document.getElementById("changeimg1").src = "resources/img/food55.png";
					document.getElementById("changeword").innerHTML = "시금치에 대한 영양성분 데이터";
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