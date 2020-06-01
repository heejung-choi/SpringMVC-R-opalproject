<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.vo.GoodfoodVO"%>
<%@ page import="model.vo.BadfoodVO"%>
<%@ page import="model.vo.SickVO"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
img{
width: 100px;
height: 100px;
}
</style>
</head>
<body>
	<!--20200526  희정 체크박스 value값 받아오기 시작  -->
	<%
	ArrayList<GoodfoodVO> goodlist = (ArrayList<GoodfoodVO>) request.getAttribute("goodlist");
	ArrayList<BadfoodVO> badlist = (ArrayList<BadfoodVO>) request.getAttribute("badlist");
	ArrayList<SickVO> sicklist = (ArrayList<SickVO>) request.getAttribute("sicklist");
%>
	<% String[] sick_cd =(String[])request.getAttribute("sick_cd"); %>
	<% boolean sick=true;%>
	<!--20200526  희정 체크박스 value값 받아오기 끝 -->

	<!--20200528 희정 선택 질병 출력부분 시작 -->
	<h1>
		고객님께서 선택하신 질병은
		<%for(int i=0; i<sick_cd.length;i++) {%>
		<%if(i==0) {%>
		<%=sicklist.get(i).getSick_name().toString() %>
		<%} else if(i>=1){%>,
		<%=sicklist.get(i).getSick_name().toString() %>
		<%} %>
		<%} %>
		입니다.
	</h1>
	<!--20200528 희정 선택 질병 출력부분 끝 -->
	<h2>
		<br> 질병에 좋은 음식에 대해 소개해드리겠습니다. <br>
		
		<%String[] sickname ={"질병","치주질환","기관지염/비염","고혈압","척추질환","식도/위/식이지장염","장염/결장염","피부염","당뇨병","백내장","무릎관절증","어지럼증","어깨병변"}; %>
		<!--20200529 희정 좋은 음식 출력 부분 시작 -->
		<%for(int j=0; j<goodlist.size();j++) {%>
		<%if(goodlist.get(j).getSick_cd().equals("1")){ 
				if(sick){%>
							<%=sickname[j]%>에 좋은 음식입니다. <br>
							<%sick=false; %>
							<%}%>
		<img src="<%=goodlist.get(j).getfood_img()%>">
		<br>
		<%=goodlist.get(j).getfood_name()%>
		<br>
		<%}}sick=true;%>

		<!--20200529 희정 좋은 음식 출력 부분 끝 -->
		<%System.out.println("-----------"+badlist.get(0).getSick_cd()); %>
				<!--20200529 희정 나쁜 음식 출력 부분 시작 -->
		<%for(int j=0; j<badlist.size();j++) {
			if(badlist.get(j).getSick_cd().equals("1")){ 
				if(sick){%>치주질환에 나쁜 음식입니다. <br>
							<%sick=false;}%>
		<img src="<%=badlist.get(j).getfood_img()%>">
		<br>
		<%=badlist.get(j).getfood_name()%>
		<br>
		<%}}sick=true;%>
		
		<!--20200529 희정 좋은 음식 출력 부분 끝 -->
		
		
	

	</h2>



<h3>질병을 다시 선택하시려면 질병 다시 선택하기 버튼을 눌러주세요.</h3>
	<button onclick="location.href='index'">질병 다시 선택하기</button>
	<form action="/opalproject/sick2" method="POST">
		<%for(int i = 0 ; i<sick_cd.length;i++){ %>
		<input type="hidden" name="sick_cd" value="<%=sick_cd[i]%>">
		<%} %>
		<h3>고객님께서 선택하신 모든 질병에 대한 정보를 종합하여 맟춤형 음식을 추천해드리겠습니다.</h3>
		<h3> 질병별 상관관계 분석하기 버튼을 클릭해주세요.</h3>
		<button>질병별 상관관계 분석하기</button>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}">
	</form>
</body>
</html>