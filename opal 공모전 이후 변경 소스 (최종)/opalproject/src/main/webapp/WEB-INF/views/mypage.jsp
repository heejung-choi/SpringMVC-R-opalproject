<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.vo.CustomerVO, java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html class="no-js" lang="">
<head>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>OPAL :: 회원정보 수정</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="resources/images/Opal.png">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/flexslider.css">
<link rel="stylesheet" href="resources/css/jquery.fancybox.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/ourcss/signUpForm.css">
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
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#nav ul.sub-menu").hide();
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
		<a class="logo" href="/opalproject/index">
				   <img src="resources/images/Opal.png" width="100" alt=""></a>
		<nav class="navigation" role="navigation">	
			<ul id = "main-menu" class="primary-nav">
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
			        <li><a href="/opalproject/cart/list">내 장바구니 보러가기</a></li>
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
<script>
window.onload = function(){
	var cust_name_dom = document.getElementById("cust_name");
	var cust_id_dom = document.getElementById("cust_id");
	var idcheck_dom = document.getElementById("idcheck");
	var submit_dom = document.getElementById("submit");
	var cust_id_pattern = /^[A-Za-z0-9_\-]{6,10}$/;
	if(cust_id_dom!=undefined ){
		cust_id_dom.onkeyup = function(){
			if(cust_id_dom.value.length<=5){
				idcheck_dom.innerHTML ="아이디는 영문, 숫자 포함 6자이상 10자이하 입니다.";
				idcheck_dom.style.color="red";
				submit_dom.disabled=true;
			}else{
			$.ajax({
				url : "/opalproject/getdbdata",
				dataType : "json",
				data : {"cust_id":cust_id_dom.value},
				beforeSend : function(){
					idcheck_dom.innerHTML ="";
				},
				success : function(data){
					if(cust_id_dom.value.length>5){
						if(cust_id_pattern.test(cust_id_dom.value)==false){
							idcheck_dom.innerHTML ="아이디는 영문, 숫자 포함 6자이상 10자이하 입니다.";
							idcheck_dom.style.color="black";
							submit_dom.disabled=true;
						}else{
							if(data.length>0){
								idcheck_dom.innerHTML ="해당 아이디가 존재합니다.";
								idcheck_dom.style.color="red";
								submit_dom.disabled=true;
								console.log(data);
							}
							else{
								idcheck_dom.innerHTML ="사용 가능한 아이디입니다.";
								idcheck_dom.style.color="blue";
								submit_dom.disabled=false;
							}
						}
					}
				},
				error : function(jqXHR, textStatus, errorThrown){
					console.log("jqXHR.status : " + jqXHR.status);
					console.log("jqXHR.statusText : " + jqXHR.statusText);
					console.log("jqXHR.responseText : " + jqXHR.responseText);
					console.log("jqXHR.readyState : " + jqXHR.readyState);
					console.log("textStatus : " + textStatus);
					console.log("errorThrown : " + errorThrown);
				}
			});
			}
	}
	}
	else{
		console.log("editMyInfo.jsp : cust_id_dom 객체를 찾을 수 없습니다.");
	}	
	submit_dom.onclick = function(){
		if(cust_id_dom.value.length<6){
			alert("아이디는 6자 이상입니다.")
			event.preventDefault();
		}
	}
		
		var cust_pw_dom = document.getElementById("cust_pw");
		var cust_pwch_dom = document.getElementById("cust_pwch");
		var h5_pwch_dom = document.getElementById("pwch");
		
		cust_pwch_dom.onchange = function(){
			h5_pwch_dom.innerHTML="";
			
				if(cust_pw_dom.value != cust_pwch_dom.value){
					h5_pwch_dom.innerHTML="비밀번호가 일치하지 않습니다.";
					h5_pwch_dom.style.color="red";
					submit_dom.disabled=true;
				}
				else{
					h5_pwch_dom.innerHTML="비밀번호가 일치합니다.";
					h5_pwch_dom.style.color="blue";
					submit_dom.disabled=false;
				}
		}
		cust_pw_dom.onchange = function(){
			if(cust_pw_dom.value.length==0){
				h5_pwch_dom.innerHTML="*비밀번호 확인을 위해서 한 번만 더 입력해주세요.";
			}
			
			if(cust_pw_dom.value != cust_pwch_dom.value){
				h5_pwch_dom.innerHTML="비밀번호가 일치하지 않습니다.";
				h5_pwch_dom.style.color="red";
				submit_dom.disabled=true;
			}
			else{
				h5_pwch_dom.innerHTML="비밀번호가 일치합니다.";
				h5_pwch_dom.style.color="blue";
				submit_dom.disabled=false;
			}
		}
		
		var h5_namecheck_dom = document.getElementById("namecheck");
		var cust_name_pattern = /^[가-힣]{2,6}$/;
		//var cust_name_pattern = /[\uAC00-\uD7A3]{1,6}[^a-z]{0,}[^A-Z]{0,}]/;
		
		cust_name_dom.onkeyup = function(){
			if(cust_name_pattern.test(cust_name_dom.value)==true){
				h5_namecheck_dom.innerHTML = "";
				submit_dom.disabled=false;
			}
			else{
				h5_namecheck_dom.innerHTML = "이름을 다시 입력하세요.";
				h5_namecheck_dom.style.color="red";
				submit_dom.disabled=true;
			}
			if(cust_name_dom.value==0){
				h5_namecheck_dom.innerHTML = "";
				submit_dom.disabled=false;
			}
		}
		
		
		//이메일 체크
		var email_dom1 = document.getElementById("emailId");
		var email_dom2 = document.getElementById("textEmail");
		var email_dom3 = document.getElementById("select");
		var emailcheck = document.getElementById("emailcheck");
		var emailCheck_pattern = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		
	 	email_dom1.onchange = function(){
				if(emailCheck_pattern.test(email_dom1.value+"@"+email_dom2.value)){
					emailcheck.innerHTML = "올바른 이메일입니다.";
				    emailcheck.dom.style.color="blue";
				}
				else{
					emailcheck.innerHTML = "올바른 이메일 형식이 아닙니다.";
				    emailcheck.dom.style.color="red";
				}
	 	}
	 	email_dom2.onchange = function(){
			if(emailCheck_pattern.test(email_dom1.value+"@"+email_dom2.value)){
				emailcheck.innerHTML = "올바른 이메일입니다.";
		        emailcheck.dom.style.color="blue";			
			}
			else{
				emailcheck.innerHTML = "올바른 이메일 형식이 아닙니다.";
			    emailcheck.dom.style.color="red";
			}
 	}
	 	email_dom3.onchange = function(){
			if(emailCheck_pattern.test(email_dom1.value+"@"+email_dom2.value)){
				emailcheck.innerHTML = "올바른 이메일입니다.";
			    emailcheck.dom.style.color="blue";	
			}
			else{
				emailcheck.innerHTML = "올바른 이메일 형식이 아닙니다.";
			    emailcheck.dom.style.color="red";
			}
 	}

		//생년월일 체크
		var cust_birthday_date_dom = document.getElementById("cust_birthday_date");
		var h5_birthdaycheck = document.getElementById("birthdaycheck");
		var birthdayCheck_pattern = /^(19|20)[0-9]{2}(0[1-9]|1[1-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
		
		cust_birthday_date_dom.onchange = function(){
			if(birthdayCheck_pattern.test(cust_birthday_date_dom.value)==true){
				h5_birthdaycheck.innerHTML = "";
			}
			else{
				h5_birthdaycheck.innerHTML = "";
			}
			
		}
	}
	
	//핸드폰 번호 체크
	var cust_pnum1_dom = document.getElementById("cust_pnum1");
	var cust_pnum2_dom = document.getElementById("cust_pnum2");
	var cust_pnum3_dom = document.getElementById("cust_pnum3");
	var pnumCheck_pattern = /^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$/;
	var h5_pnumcheck = document.getElementById("pnumcheck");
	
	cust_pnum1_dom.onchange = function(){
		if(pnumCheck_pattern.test(cust_pnum1_dom.value+"-"+cust_pnum2_dom.value+"-"+cust_pnum3_dom.value))
			h5_pnumcheck.innerHTML = "유효한 핸드폰 번호입니다.";
		else
			h5_pnumcheck.innerHTML = "핸드폰 번호를 확인해주세요.";
	}
	cust_pnum2_dom.onchange = function(){
		if(pnumCheck_pattern.test(cust_pnum1_dom.value+"-"+cust_pnum2_dom.value+"-"+cust_pnum3_dom.value))
			h5_pnumcheck.innerHTML = "유효한 핸드폰 번호입니다.";
		else
			h5_pnumcheck.innerHTML = "핸드폰 번호를 확인해주세요.";
	}
	cust_pnum3_dom.onchange = function(){
		if(pnumCheck_pattern.test(cust_pnum1_dom.value+"-"+cust_pnum2_dom.value+"-"+cust_pnum3_dom.value))
			h5_pnumcheck.innerHTML = "유효한 핸드폰 번호입니다.";
		else
			h5_pnumcheck.innerHTML = "핸드폰 번호를 확인해주세요.";
	}
</script>
<!-- 회원정보 수정 -->

	<%	
		request.getAttribute("customer");
		System.out.print("졸려죽게다 성공해라 좀"+request.getAttribute("customer"));
		String[] custemail = (String[])request.getAttribute("custemail");
		String[] custaddress = (String[])request.getAttribute("custaddress");
		String custpnum1 = (String)request.getAttribute("custpnum1");
		String custpnum2 = (String)request.getAttribute("custpnum2");
		String custpnum3 = (String)request.getAttribute("custpnum3");
		%>


 <section id="entrance">
 <h2>회원정보 수정</h2>
 <hr>
 <br>
 <form method="post" action="/opalproject/meminfoupdate" >	
	<input type="hidden" name="action" value="update">
	<input type="hidden" id="cust_cd" name="cust_cd" 	value="${customer.cust_cd}">
      <table>
            <tbody>
               <tr>
                  <td class="td_name">이름</td>
                  <td class="td_text">
                  <input id="cust_name" style="width: 200px; text-align: left;" type="text" name="cust_name" autocomplete=”off” maxlength="6" required autofocus value="${customer.cust_name}" readonly>
                  		
                  		
                  </td>
               </tr>

               <tr>
                  <td class="td_name">아이디</td>
                  <td class="td_text">
                 <input style="width: 200px; text-align: left;" type="text" id="cust_id" name="cust_id" autocomplete=”off”  maxlength="10" required value="${customer.cust_id}" readonly>&nbsp;&nbsp;<span id="idcheck"></span>
               </tr>
               <tr>
                  <td class="td_name">비밀번호</td>
                  <td class="td_text">
                  <input id="cust_pw" style="width: 200px; text-align: left;" type="password" name="cust_pw" value="${customerVO.cust_pw}"></td>
               </tr>
             
                <tr>
                  <td class="td_name">성별</td>
                  <td class="td_text">
					<c:if test="${customer.cust_gender == 'on'}">
                   		<label for="radio"><input id= "radio" type="radio" name="cust_gender" checked value="${customer.cust_gender}" >여자</label>
                		<label for="radio"><input id= "radio" type="radio" name="cust_gender" value="${customer.cust_gender}" >남자</label>
                  	</c:if>
                   
                  
                 <!--<c:if test="${customer.cust_gender == '여자'}">
					  여자	
				</c:if>
                  <c:if test="${customer.cust_gender == '남자'}">
					  남자	
				</c:if>  --> 
                  </td>
               </tr>

             <tr>
                  <td class="td_name">이메일</td>
                  <td class="td_text">
                    <input id="emailId" style="width: 200px; text-align: left;" type="text" name="cust_email1" autocomplete=”off” required value="${custemail[0]}">
                  <span>@</span>
                  <input id="textEmail" style="width: 200px; text-align: left;" placeholder="이메일을 선택하세요." name="cust_email2" autocomplete=”off” required value="${custemail[1]}">
                     <select id="select">
                        <option value="" selected>직접 입력</option>
                        <option value="naver.com" id="naver.com">naver.com</option>
                        <option value="nate.com" id="nate.com">nate.com</option>
                        <option value="gmail.com" id="gmail.com">gmail.com</option>
                        <option value="hangmail.net" id="hangmail.net">hangmail.net</option>
                        <option value="hotmail.com" id="hotmail.com">hotmail.com</option>
                     </select>
                     <br>
                     <span id="emailcheck"></span>
                  
                 
                  </td>
               </tr>
               
               <tr>
                  <td class="td_name">생년월일</td>
                  <td class="td_text">
                  <input id="cust_birthday_date" style="width: 200px; text-align: left;" type="date" name="cust_birthday_date" autocomplete=”off” required value="${customer.cust_birthday_date}">
                   <h5 id = "birthdaycheck"></h5>
                  
                  
                  </td>
                 
               </tr>
               
			  <tr>
              	 <td class="td_name">휴대폰번호</td>
              	 <td class="td_text">
              <input id="cust_pnum1" type="number" style="width: 200px; text-align: left;" type="text" name="cust_pnum1" autocomplete=”off”  required value="${custpnum1}">-
              <input id="cust_pnum2" type="number" style="width: 200px; text-align: left;" type="text" name="cust_pnum2" autocomplete=”off”  required value="${custpnum2}">-
              <input id="cust_pnum3" type="number" style="width: 200px; text-align: left;" type="text" name="cust_pnum3" autocomplete=”off”  required value="${custpnum3}">
              <h5 id="pnumcheck"></h5></td>
              </tr>
              <tr>
                  <td class="td_name">주소</td>
                  <td class="td_text">
                     <input type="text" id="sample6_postcode" placeholder="우편번호" name="cust_address1" autocomplete=”off” readonly required  value="${custaddress[0]}">
                     <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" autocomplete=”off” ><br> 
                     <input type="text" id="sample6_address" placeholder="주소" style="width: 300px;" name="cust_address2" autocomplete=”off” readonly required value="${custaddress[1]}"><br>
                     <input type="text" id="sample6_detailAddress" placeholder="상세주소" style="width: 500px;" name="cust_address3" autocomplete=”off” required value="${custaddress[2]}">
                     <input type="text" id="sample6_extraAddress" placeholder="참고항목" name="cust_address4" autocomplete=”off” readonly required>
                   </td>
               </tr>
            </tbody>
         </table>
		 <div class="button">
            <input type="submit" class="btn btn-success" value="정보수정" id ="submit">
            <input class="btn btn-secondary" type="reset" value="재작성" style="margin-right: 10px;"> 
		    <input class="btn btn-secondary" onclick="location.href='${header.referer}'" type="button" value="취소">
         </div>
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
      </form>	
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
</body>

<!-- 다음 주소 API 스크립트 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("sample6_extraAddress").value = extraAddr;

						} else {
							document.getElementById("sample6_extraAddress").value = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode').value = data.zonecode;
						document.getElementById("sample6_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("sample6_detailAddress")
								.focus();
					}
				}).open();
	}
</script>
<!-- 다음 주소 API 스크립트 끝-->
<!-- 메일 셀렉트 스크립트 함수. jquery 로드해야 실행된다.-->
<script>
	$(function() {
		$('#select').change(function() {
			if ($('#select').val() == 'directly') {
				$('#textEmail').attr("disabled", false);
				$('#textEmail').val("");
				$('#textEmail').focus();
			} else {
				$('#textEmail').val($('#select').val());
			}
		})
	});
</script>
<!-- 메일 셀렉트 스크립트 끝-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="resources/js/jquery.min.js"><\/script>')
	</script>


<!-- 메일 셀렉트 스크립트 끝-->

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

