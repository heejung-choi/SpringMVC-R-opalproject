<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
		
		
		<!--20200529 희정 좋은 음식 출력 부분 시작 -->
		<%for(int j=0; j<goodlist.size();j++) {%>
		<%if(goodlist.get(j).getSick_cd().equals("1")){ 
				if(sick){%>
							치주질환에 좋은 음식입니다. <br>
							<%sick=false; %>
							<%}%>
		<%=goodlist.get(j).getfood_img()%>
		<br>
		<%=goodlist.get(j).getfood_name()%>
		<br>
		<%}}sick=true;%>
		<!--20200529 희정 좋은 음식 출력 부분 끝 -->
		
				<!--20200529 희정 나쁜 음식 출력 부분 시작 -->
		<%for(int j=0; j<badlist.size();j++) {%>
		<%if(badlist.get(j).getSick_cd().equals("1")){ 
				if(sick){%>치주질환에 나쁜 음식입니다. <br>
							<%sick=false; %>
							<%}%>
		<%=badlist.get(j).getfood_img()%>
		<br>
		<%=badlist.get(j).getfood_name()%>
		<br>
		<%}}sick=true;%>
		<!--20200529 희정 좋은 음식 출력 부분 끝 -->
		
		
	

	</h2>




	<button onclick="location.href='index'">질병 다시 선택하기</button>
	<form action="/opalproject/sick2" method="POST">
		<%for(int i = 0 ; i<sick_cd.length;i++){ %>
		<input type="hidden" name="sick_cd" value="<%=sick_cd[i]%>">
		<%} %>
		<button>질병별 상관관계 분석하기</button>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}">
	</form>
</body>
</html>