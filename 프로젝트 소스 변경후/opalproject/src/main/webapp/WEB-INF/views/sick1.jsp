<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.vo.GoodfoodVO"%>
<%@ page import="model.vo.BadfoodVO"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!--20200526  희정 체크박스 value값 받아오기  -->
	<%
		ArrayList<GoodfoodVO> goodlist = (ArrayList<GoodfoodVO>) request.getAttribute("goodlist");
		ArrayList<BadfoodVO> badlist = (ArrayList<BadfoodVO>) request.getAttribute("badlist");
	%>
<% String[] sick_cd =(String[])request.getAttribute("sick_cd"); %>

<%
System.out.println("cd값은?"+sick_cd[0]);
System.out.println("테스트데이터는 "+goodlist.get(0).getfood_cd().toString() );
%>


	

		


	
	<form action="/opalproject/sick2" method="POST">

<%for(int i = 0 ; i<sick_cd.length;i++){ %>
<input type="hidden" name="sick_cd" value="<%=sick_cd[i]%>"><%} %>
		<button >질병별 상관관계 분석하기</button>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		</form>
</body>
</html>