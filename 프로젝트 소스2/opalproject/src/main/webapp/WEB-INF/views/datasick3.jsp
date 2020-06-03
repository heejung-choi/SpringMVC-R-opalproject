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
	src="resources/opaldiabetes_files/htmlwidgets-1.5.1/htmlwidgets.js"></script>
<link href="resources/opaldiabetes_files/wordcloud2-0.0.1/wordcloud.css"
	rel="stylesheet" />
<script
	src="resources/opaldiabetes_files/wordcloud2-0.0.1/wordcloud2-all.js"></script>
<script src="resources/opaldiabetes_files/wordcloud2-0.0.1/hover.js"></script>
<script
	src="resources/opaldiabetes_files/wordcloud2-binding-0.2.1/wordcloud2.js"></script>
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
				<button class="selectbutton" onclick="location.href='datasick3'">당뇨</button>
				<button class="button" onclick="location.href='datasick4'">위/식도</button>
				<button class="button" onclick="location.href='datasick5'">대장/췌장</button>
			</div>
		</div>
		<br>
		<!-- 2020 05 20 희정 당뇨병 질병 관련 설명 시작-->
			<div class="titlewrap">
		<div class="title">
				<h1>당뇨병</h1>
			</div>
		</div>
		<div class="boxwrap">
		<img src="resources/img/sickimg3.png"> <br><br>
		</div>
		<div class="boxwrap2">
	        <b>질환명 : [한글명] 당뇨병 [영문명] Diabetes Mellitus</b> <br> <b><img
				class="dlistimg" src="resources/img/listbox.png"> &nbsp;정의</b>
			<div class="greycol">당뇨병이란 우리 몸이 섭취한 음식물을 적절하게 사용하지 못하여 혈액 속의
				포도당(혈당)의 수치가 정상인보다 훨씬 높은 상태를 말하며, 우리 몸에서 에너지로 사용하는 포도당이 소변으로 빠져 나간다
				하여 이름이 붙여진 병입니다.</div>
			<br> <b><img class="dlistimg"
				src="resources/img/listbox.png"> &nbsp;원인</b>
			<div class="greycol">
				유전, 바이러스, 비만증, 노화, 식사습관, 스트레스 및 약물 등의 원인으로 생깁니다. <br>- 유전성향이
				강하나, 양친 모두 당뇨병이라도 자녀에게서 당뇨병이 발생될 확률은 40% 정도입니다. 유전요인 보유자가 이뇨제,
				경구피임약, 갑상선 호르몬 등의 약물 복용시 혈당상승 및 당뇨병 악화 가능성이 높아집니다.<br>- 콕사키
				바이러스 감염 등이 췌장의 베타세포를 파괴시켜 당뇨를 유발 할 수 있습니다.<br>- 비만은 인슐린 저항성을 높혀
				당뇨를 일으킬 수 있습니다. <br>- 체내의 세포기능 저하로도 당뇨가 유발될 수 있습니다.
			</div>
			<br> <b><img class="dlistimg"
				src="resources/img/listbox.png"> &nbsp;증상</b>
			<div class="greycol">모든 당뇨인이 당뇨병의 증상을 경험하는 것은 아닙니다. 혈당이
				180mg/dL 정도되면 소변에서 당이 나오게 됩니다. 그러나 이 정도의 혈당농도 일때는 자각 증상이 나타나지 않습니다.
				더욱 혈당이 높아지면(대체로 200 ~ 250mg/dL을 초과할 경우) 갈증, 다음, 다식, 다뇨, 피로감, 체중감소,
				피로감 등의 자각 증상을 느낄수 있습니다. 즉, 당뇨병은 혈당관리를 잘하면 자각증상도 없고 건강하게 지낼 수 있습니다. <br>●
				당뇨병의 대표적인 증상 빈뇨 (소변을 자주 봄), 다음 (과도한 목마름), 다뇨 (소변량이 많음), 다식 (배고픔으로 많이
				먹게 됨), 설명되지않는 체중감소<br>● 기타 다른 증상 피로감, 눈이 뿌옇게 보임, 다리에 통증, 입이 마름, 피부가
				건조하고 가려움, 발기부전(남성의 경우), 음부 가려움증(여성의 경우), 상처치유가 느려지거나 잘 안됨, 감염성 질환에
				걸리기 쉬움(상기도감염, 요도감염 등)</div>
		</div>
		<!-- 2020 05 20 희정 당뇨병 질병 관련 설명 끝-->
		<div class="titlewrap">
		<div class="title">
				<h2>고혈압에 좋은 음식에 대한 데이터 분석 결과</h2>
			</div>
		</div>
		<!-- 2020 05 20  희정 당뇨 워드클라우드 출력부분 시작  -->
		<div id="htmlwidget_container" class="wordcloud">
			<div id="htmlwidget-8ea7b654edb6e9f89d22"
				style="width: 800px; height: 550px;" class="wordcloud2 html-widget"></div>
		</div>
		<script type="application/json"
			data-for="htmlwidget-8ea7b654edb6e9f89d22">{"x":{"word":["마늘","양파","돼지감자","비타민","여주","차","채소","홍삼","단백질","현미","시금치","즙","두릅","땅콩","미네랄","우유","콩","팥","천연","청국장","마","비트","생선","생식","잡곡밥","장","토마토","호박","효소","곡물","껍질","나트륨","두부","블루베리","새싹","섬유질","양배추","오메가","유제품","칼슘","당근","브로콜리","야채","영지버섯","곡류","귀리","산삼","자색","치즈","칼륨","콩류","피망"],"freq":[33,27,24,23,22,21,16,15,13,13,12,11,10,10,10,10,10,10,8,8,7,7,7,7,7,7,7,7,7,6,6,6,6,6,6,6,6,6,6,6,5,5,5,5,4,4,4,4,4,4,4,4],"fontFamily":"Yang Rounded","fontWeight":"bold","color":"random-light","minSize":0,"weightFactor":5.45454545454545,"backgroundColor":"black","gridSize":0,"minRotation":-0.523598775598299,"maxRotation":-0.523598775598299,"shuffle":true,"rotateRatio":1,"shape":"circle","ellipticity":0.65,"figBase64":null,"hover":null},"evals":[],"jsHooks":{"render":[{"code":"function(el,x){\n                        console.log(123);\n                        if(!iii){\n                          window.location.reload();\n                          iii = False;\n\n                        }\n  }","data":null}]}}</script>
		<script type="application/htmlwidget-sizing"
			data-for="htmlwidget-8ea7b654edb6e9f89d22">{"viewer":{"width":800,"height":550,"padding":0,"fill":true}}</script>


		<!-- 2020 05 20 희정 당뇨 워드클라우드 출력부분 끝  -->
		
		<div class="titlewrap">
		<div class="title2">
				<h5>:: 고혈압에 좋은 음식에 관한 텍스트를 분석한 결과 :: 
				<br> 
				마늘, 양파, 돼지감자, 여주, 인삼(홍삼)이 당뇨병에 좋다는 결과가 나왔습니다.</h5>
			</div>
		</div>
		<div class="cont opt1">
			<script>
				var food = new Array('당뇨', '마늘', '양파', '돼지감자', '여주', '인삼(홍삼)');
				for (var i = 1; i <= 5; i++) {
					document.write("<div class='box'>");
					document
							.write("<img class='sickfood' src='resources/img/sick3"+i+".PNG'>");
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
			<h4 id=changeword>마늘에 대한 영양성분 데이터</h4>
			<img class="fooddata" id="changeimg1" src='resources/img/food31.png'>
			<br> <br>
			<h5>다른 음식에 대한 영양정보를 확인하시려면 아래 버튼을 눌러주세요.</h5>
			<br> <br>
			<button class="changeimg" onclick="changeimg(1)">마늘</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(2)">양파</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(3)">돼지감자</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(4)">여주</button>
			&nbsp;&nbsp;&nbsp;
			<button class="changeimg" onclick="changeimg(5)">인삼(홍삼)</button>
			&nbsp;&nbsp;&nbsp;
		</div>
		<br> <br>
		<script>
			function changeimg(change) {
				if (change == 1) {
					document.getElementById("changeimg1").src = "resources/img/food31.png";
					document.getElementById("changeword").innerHTML = "마늘에 대한 영양성분 데이터";
				} else if (change == 2) {
					document.getElementById("changeimg1").src = "resources/img/food32.png";
					document.getElementById("changeword").innerHTML = "양파에 대한 영양성분 데이터";
				} else if (change == 3) {
					document.getElementById("changeimg1").src = "resources/img/food33.png";
					document.getElementById("changeword").innerHTML = "돼지감자에 대한 영양성분 데이터";
				} else if (change == 4) {
					document.getElementById("changeimg1").src = "resources/img/food34.png";
					document.getElementById("changeword").innerHTML = "여주에 대한 영양성분 데이터";
				} else if (change == 5) {
					document.getElementById("changeimg1").src = "resources/img/food35.png";
					document.getElementById("changeword").innerHTML = "인삼(홍삼)에 대한 영양성분 데이터";
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