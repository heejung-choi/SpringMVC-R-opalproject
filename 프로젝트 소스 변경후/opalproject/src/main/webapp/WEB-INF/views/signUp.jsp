<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>소개</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" href="resources/journal/bootstrap.css"
   media="screen">
<link rel="stylesheet" href="resources/_assets/css/custom.min.css">
<link rel="stylesheet" href="resources/ourcss/main.css">
<link rel="stylesheet" href="resources/ourcss/entrance.css">
<link rel="stylesheet" href="resources/ourcss/signUp.css">
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
   
   <section id="entrance">
   
	<section id="entrance">
	
	<h2>가입할 유형을 선택해주세요.</h2>
	
	<div class=button>
	<button class="customer" onclick="location.href='signupform?member=customer'">고객</button>
	<button class="farmer" onclick="location.href='signupform?member=partner'">파트너</button>
	</div>
	
	</section>
   <footer>
      <h3>홈페이지 정보(바닥 글)</h3>
   </footer>
   <!--footer 끝-->
</body>
	<!-- <section id="entrance">
	<h2>회원가입</h2>
	<form method="post" action="/opalproject/" enctype="multipart/form-data">
	 <table>
	 <tbody>
	 <tr>
	 <td class="td_name">이름</td><td class="td_text"><input style="width:200px; text-align: left;" type="text"></td>
	 </tr>
	 <tr>
	 <td class="td_name">아이디</td><td class="td_text"><input style="width:200px; text-align:left;" type="text">&nbsp;&nbsp;<input type="button" class="btn btn-outline-secondary" value="중복 확인하기"></td>
	 </tr>
	 <tr>
	 <td class="td_name">비밀번호</td><td class="td_text"><input style="width:200px; text-align:left;" type="text"></td>
	 </tr>
	 <tr>
	 <td class="td_name">비밀번호 확인</td><td class="td_text"><input style="width:200px; text-align:left;" type="text"> <span>&nbsp;&nbsp;*비밀번호 확인을 위해서 한 번만 더 입력해주세요.</span> </td>
	 </tr>
	 <tr>
	 <td class="td_name">별명</td><td class="td_text"><input style="width:200px; text-align:left;" type="text"></td>
	 </tr>
	 <tr>
	 <td class="td_name">생년월일</td><td class="td_text"><input style="width: 200px; text-align: left;" type="date"></td>
	 </tr>
	 <tr>
	 <td class="td_name">성별</td><td class="td_text"><label><input type="radio" name="check" value="female" checked>여자</label>   <label><input type="radio" name="check" value="male">남자</label></td>
	 </tr>
	 <tr>
	 <td class="td_name">이메일</td><td class="td_text"><input style="width:200px; text-align:left;" type="text"> @ <input style="width:200px; text-align:left;" type="text"></td>
	 </tr>
	 <tr>
	 <td class="td_name">전화번호</td><td class="td_text"><input style="width:200px; text-align:left;" type="text"></td>
	 </tr>
	 <tr>
	 <td class="td_name">휴대폰번호</td><td class="td_text"><input style="width:200px; text-align:left;" type="text"></td>
	 </tr>
	 <tr>
	 <td class="td_name">주소</td><td class="td_text"><input type="button" value="주소 검색" onclick="goPopup();" class="btn btn-outline-secondary">&nbsp;&nbsp;
	 
	 <input type="text"  style="width:500px;" id="roadAddrPart1"  name="roadAddrPart1" class="form-control" required="true" readonly="true" />
	 <input type="text"  style="width:500px;" id="addrDetail"  name="addrDetail"  class="form-control" required="true" readonly="true"/>
	
	 <input id="address"  style="width: 200px; text-align: left;" type="text" class="form-control" required="true" readonly="true"></td>
	 </tr>
	 </tbody>
	 </table>
	 <div class="button">
	 <input type="submit" class="btn btn-success" value="회원가입"> 
     <input onclick="location.href='/opalproject/main'" type="button" class="btn btn-secondary" value="취소">
     </div>
	</form>
	</section>
	주소 창을 띄우는 것까지는 했는데 이게 왜 안 들어가는지까지는 모르겠다!
	적용 부분은 좀 더 생각을 해봐야 할 것 같습니다.
	entrance와 연결되어 있는 부분이 없는 것 같아 form의 action 부분을 빼놓았습니다.
	
	
		<footer>
		<h3>홈페이지 정보(바닥 글)</h3>
	</footer>
	footer 끝
	
</body> -->
<script>
System.out.println("addrDetail");
System.out.println("roadAddrPart1");
</script>
<script src="resources/juso.js"></script>
<script src="resources/_vendor/jquery/dist/jquery.min.js"></script>
<script src="resources/_vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="resources/_vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="resources/_assets/js/custom.js"></script>
</html>