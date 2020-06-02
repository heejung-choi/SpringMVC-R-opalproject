<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" href="resources/journal/bootstrap.css"
   media="screen">
<link rel="stylesheet" href="resources/_assets/css/custom.min.css">
<link rel="stylesheet" href="resources/ourcss/main.css">
<link rel="stylesheet" href="resources/ourcss/entranceForm.css">

<!-- jquery를 먼저 로딩해주지 않으면 이메일 셀렉트 기능이 정상적으로 동작하지 않습니다. -->
<script type="text/javascript" src="resources/jquery-3.5.1.min.js"></script>
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
   <hr>
   <br>
   <!--main navbar 끝-->

<%String member = (String)request.getAttribute("member"); %>
   <section id="entrance">
      <h2>회원가입</h2>
      <form method="post" action="/opalproject/csignex" >
         <table>
            <tbody>
             	<tr>
             	<td class="td_name">회원유형</td>
                  <td class="td_text">
		 	<label for="radio"><input id= "radio" type="radio" name="member" value="<%=member%>" checked disabled>고객</label>
		 	<label for="radio"><input id= "radio" type="radio" name="member" disabled>파트너</label>
                  </td>
               </tr>
             	</tr>
               <tr>
                  <td class="td_name">이름</td>
                  <td class="td_text"><input
                     style="width: 200px; text-align: left;" type="text" name="cust_name" autocomplete=”off” required></td>
               </tr>
               <tr>
                  <td class="td_name">아이디</td>
                  <td class="td_text"><input
                     style="width: 200px; text-align: left;" type="text" name="cust_id" autocomplete=”off” required>&nbsp;&nbsp;<input
                     type="button" class="btn btn-outline-secondary" value="중복 확인하기"></td>
               </tr>
               <tr>
                  <td class="td_name">비밀번호</td>
                  <td class="td_text"><input
                     style="width: 200px; text-align: left;" type="password" name="cust_pw" autocomplete=”off” min=6 max=11 required></td>
               </tr>
               <tr>
                  <td class="td_name">비밀번호 확인</td>
                  <td class="td_text"><input
                     style="width: 200px; text-align: left;" type="password" autocomplete=”off” min=6 max=11 required> <span>&nbsp;&nbsp;*비밀번호
                        확인을 위해서 한 번만 더 입력해주세요.</span></td>
               </tr>
               <script>
               		
               </script>
                <tr>
                  <td class="td_name">성별</td>
                  <td class="td_text">
		            <label for="radio"><input id= "radio" type="radio" name="cust_gender" checked >여자</label>
				 	<label for="radio"><input id= "radio" type="radio" name="cust_gender" >남자</label>
                  </td>
               </tr>
               
    			<tr>
                  <td class="td_name">이메일</td>
                  <td class="td_text">
                  <input id="emailId" style="width: 200px; text-align: left;" type="text" name="cust_email1" autocomplete=”off” required>
                  <span>@</span>
                  <input id="textEmail" style="width: 200px; text-align: left;" placeholder="이메일을 선택하세요." name="cust_email2" autocomplete=”off” required>
                     <select id="select">
                        <option value="" disabled selected>직접 입력</option>
                        <option value="naver.com" id="naver.com">naver.com</option>
                        <option value="nate.com" id="nate.com">nate.com</option>
                        <option value="gmail.com" id="gmail.com">gmail.com</option>
                        <option value="hangmail.net" id="hangmail.net">hangmail.net</option>
                        <option value="hotmail.com" id="hotmail.com">hotmail.com</option>
                  	</select>
                  	</td>
               </tr>
               
               <tr>
                  <td class="td_name">생년월일</td>
                  <td class="td_text">
                  <input style="width: 200px; text-align: left;" type="date" name="cust_birthday_date" autocomplete=”off” required></td>
               </tr>
  

               
               <tr>
                  <td class="td_name">휴대폰번호</td>
                  <td class="td_text">
                  <input type="number" style="width: 200px; text-align: left;" type="text" name="cust_pnum1" autocomplete=”off”  required>-
                  <input type="number" style="width: 200px; text-align: left;" type="text" name="cust_pnum2" autocomplete=”off”  required>-
                  <input type="number" style="width: 200px; text-align: left;" type="text" name="cust_pnum3" autocomplete=”off”  required></td>
               </tr>
               
               <tr>
                  <td class="td_name">주소</td>
                  <td class="td_text">
                     <input type="text" id="sample6_postcode" placeholder="우편번호" name="cust_address1" autocomplete=”off” disabled required>
                     <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" autocomplete=”off” ><br> 
                     <input type="text" id="sample6_address" placeholder="주소" style="width: 300px;" name="cust_address2" autocomplete=”off” disabled required><br>
                     <input type="text" id="sample6_detailAddress" placeholder="상세주소" style="width: 500px;" name="cust_address3" autocomplete=”off” required>
                     <input type="text" id="sample6_extraAddress" placeholder="참고항목" name="cust_address4" autocomplete=”off” disabled required>
                   </td>
               </tr>
            </tbody>
         </table>
         <div class="button">
            <input type="submit" class="btn btn-success" value="회원가입"> <input
               onclick="location.href='/opalproject/main'" type="button"
               class="btn btn-secondary" value="취소">
         </div>
         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
      </form>
   </section>
   <!-- 0519 정해림 -->
   <!-- entrance와 연결되어 있는 부분이 없는 것 같아 form의 action 부분을 빼놓았습니다. -->
   <!-- 주소 및 이메일을 입력 시 input창에 들어가는 것까지 구현 -->


   <footer>
      <h3>홈페이지 정보(바닥 글)</h3>
   </footer>
   <!--footer 끝-->
</body>
<!-- 다음 주소 API 스크립트 -->
<script
   src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
<script src="resources/_vendor/jquery/dist/jquery.min.js"></script>
<script src="resources/_vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="resources/_vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="resources/_assets/js/custom.js"></script>
</html>