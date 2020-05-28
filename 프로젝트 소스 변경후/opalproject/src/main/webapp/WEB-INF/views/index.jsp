<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html class="no-js" lang="">
<head>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>INDEX :: test ver.</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="resources/images/Opal.png">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/flexslider.css">
<link rel="stylesheet" href="resources/css/jquery.fancybox.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/responsive.css">
<link rel="stylesheet" href="resources/css/animate.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
<script>
	$(document).ready(function() {
		$('#all_check').change(function() {
			if (this.checked) {
				$('div>input[type=checkbox]').prop('checked', true);

			} else {
				$('div>input[type=checkbox]').prop('checked', false);
			}
		});
	});
</script>

</head>
<body>
	<section class="banner" role="banner">
		<header id="header">
			<div class="header-content clearfix">
				<a class="logo" href="#"><img src="resources/images/Opal.png"
					width="100" alt=""></a>
				<nav class="navigation" role="navigation">
					<ul class="primary-nav">
						<li><a href="#features">OPAL이란</a></li>
						<li><a href="#works">로그인</a></li>
						<li><a href="#teams">회원가입</a></li>
					</ul>
				</nav>
				<a href="#" class="nav-toggle">Menu<span></span></a>
			</div>
			<!-- header content -->
		</header>
		<!-- header -->
		<div class="container">
			<div class="col-md-10 col-md-offset-1">
				<div class="banner-text text-center">
					<p>movie here</p>
				</div>
				<!-- banner text -->
			</div>
		</div>
	</section>
	<!-- banner -->

	<section id="works" class="works section no-padding">
		<!-- 20200526 희정 checkbox 체크 개수 파악 -->
		<form action="/opalproject/sick1" method="GET">
			<div class="SicknessWrap">


				<div class="sickness">
					<img src="resources/ache/toothache.png" width="100" alt="">
					<div id="check_item">
						<label class="checkbox-label"><input type="checkbox"
							name="sick_cd" value="1" /><span
							class="checkbox-custom rectangular"></span></label>
						<div class="input-title">
							치주질환<br> <span class="sick_span">[K00-K05]</span>
						</div>
					</div>
				</div>
				<div class="sickness">
					<img src="resources/ache/sneeze.png" width="100" alt="">
					<div id="check_item">
						<label class="checkbox-label"><input type="checkbox"
							name="sick_cd" value="2" /><span
							class="checkbox-custom rectangular"></span></label>
						<div class="input-title">
							기관지염/비염<br> <span class="sick_span">[J20-J39]</span>
						</div>
					</div>
				</div>
				<div class="sickness">
					<img src="resources/ache/blood-pressure.png" width="100" alt="">
					<div id="check_item">
						<label class="checkbox-label"><input type="checkbox"
							name="sick_cd" value="3" /><span
							class="checkbox-custom rectangular"></span></label>
						<div class="input-title">
							고혈압<br> <span class="sick_span">[I10-I15]</span>
						</div>
					</div>
				</div>
				<div class="sickness">
					<img src="resources/ache/vertebra.png" width="100" alt="">
					<div id="check_item">
						<label class="checkbox-label"><input type="checkbox"
							name="sick_cd" value="4" /><span
							class="checkbox-custom rectangular"></span></label>
						<div class="input-title">
							척추질환<br> <span class="sick_span">[M45-M54]</span>
						</div>
					</div>
				</div>
				<div class="sickness">
					<img src="resources/ache/intestine.png" width="100" alt="">
					<div id="check_item">
						<label class="checkbox-label"><input type="checkbox"
							name="sick_cd" value="5" /><span
							class="checkbox-custom rectangular"></span></label>
						<div class="input-title">
							식도/위/십이지장염<br> <span class="sick_span">[K20-K31]</span>
						</div>
					</div>
				</div>
				<div class="sickness">
					<img src="resources/ache/endoscopy.png" width="100" alt="">
					<div id="check_item">
						<label class="checkbox-label"><input type="checkbox"
							name="sick_cd" value="6" /><span
							class="checkbox-custom rectangular"></span></label>
						<div class="input-title">
							장염/결장염<br> <span class="sick_span">[A00-A09, K50-K64]</span>
						</div>
					</div>
				</div>
				<div class="sickness">
					<img src="resources/ache/rash.png" width="100" alt="">
					<div id="check_item">
						<label class="checkbox-label"><input type="checkbox"
							name="sick_cd" value="7" /><span
							class="checkbox-custom rectangular"></span></label>
						<div class="input-title">
							피부염<br> <span class="sick_span">[K20-30]</span>
						</div>
					</div>
				</div>
				<div class="sickness">
					<img src="resources/ache/blood-test.png" width="100" alt="">
					<div id="check_item">
						<label class="checkbox-label"><input type="checkbox"
							name="sick_cd" value="8" /><span
							class="checkbox-custom rectangular"></span></label>
						<div class="input-title">
							당뇨병<br> <span class="sick_span">[E10-E14]</span>
						</div>
					</div>
				</div>
				<div class="sickness">
					<img src="resources/ache/eye.png" width="100" alt="">
					<div id="check_item">
						<label class="checkbox-label"><input type="checkbox"
							name="sick_cd" value="9" /><span
							class="checkbox-custom rectangular"></span></label>
						<div class="input-title">
							백내장<br> <span class="sick_span">[H00-H59]</span>
						</div>
					</div>
				</div>
				<div class="sickness">
					<img src="resources/ache/knee.png" width="100" alt="">
					<div id="check_item">
						<label class="checkbox-label"><input type="checkbox"
							name="sick_cd" value="10" /><span
							class="checkbox-custom rectangular"></span></label>
						<div class="input-title">
							무릎관절증<br> <span class="sick_span">[M17,M22-M23]</span>
						</div>
					</div>
				</div>
				<div class="sickness">
					<img src="resources/ache/headache.png" width="100" alt="">
					<div id="check_item">
						<label class="checkbox-label"><input type="checkbox"
							name="sick_cd" value="11" /><span
							class="checkbox-custom rectangular"></span></label>
						<div class="input-title">
							어지럼증<br> <span class="sick_span">[R42]</span>
						</div>
					</div>
				</div>
				<div class="sickness">
					<img src="resources/ache/shoulder-pain.png" width="100" alt="">
					<div id="check_item">
						<label class="checkbox-label"><input type="checkbox"
							name="sick_cd" value="12" /><span
							class="checkbox-custom rectangular"></span></label>
						<div class="input-title">
							어깨병변<br> <span class="sick_span">[M75]</span>
						</div>
					</div>
					<input type="submit" >


				</div>
			</div>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		</form>
		<h3 class="h3_sick">관심있는 질병의 버튼을 누르신 후 확인 버튼을 눌러주세요.</h3>


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
</body>
</html>
