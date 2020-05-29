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
	<!--20200526  ���� üũ�ڽ� value�� �޾ƿ��� ����  -->
	<%
	ArrayList<GoodfoodVO> goodlist = (ArrayList<GoodfoodVO>) request.getAttribute("goodlist");
	ArrayList<BadfoodVO> badlist = (ArrayList<BadfoodVO>) request.getAttribute("badlist");
	ArrayList<SickVO> sicklist = (ArrayList<SickVO>) request.getAttribute("sicklist");
%>
	<% String[] sick_cd =(String[])request.getAttribute("sick_cd"); %>
	<% boolean sick=true;%>
	<!--20200526  ���� üũ�ڽ� value�� �޾ƿ��� �� -->

	<!--20200528 ���� ���� ���� ��ºκ� ���� -->
	<h1>
		���Բ��� �����Ͻ� ������
		<%for(int i=0; i<sick_cd.length;i++) {%>
		<%if(i==0) {%>
		<%=sicklist.get(i).getSick_name().toString() %>
		<%} else if(i>=1){%>,
		<%=sicklist.get(i).getSick_name().toString() %>
		<%} %>
		<%} %>
		�Դϴ�.
	</h1>
	<!--20200528 ���� ���� ���� ��ºκ� �� -->
	<h2>
		<br> ������ ���� ���Ŀ� ���� �Ұ��ص帮�ڽ��ϴ�. <br>
		
		
		<!--20200529 ���� ���� ���� ��� �κ� ���� -->
		<%for(int j=0; j<goodlist.size();j++) {%>
		<%if(goodlist.get(j).getSick_cd().equals("1")){ 
				if(sick){%>
							ġ����ȯ�� ���� �����Դϴ�. <br>
							<%sick=false; %>
							<%}%>
		<%=goodlist.get(j).getfood_img()%>
		<br>
		<%=goodlist.get(j).getfood_name()%>
		<br>
		<%}}sick=true;%>
		<!--20200529 ���� ���� ���� ��� �κ� �� -->
		
				<!--20200529 ���� ���� ���� ��� �κ� ���� -->
		<%for(int j=0; j<badlist.size();j++) {%>
		<%if(badlist.get(j).getSick_cd().equals("1")){ 
				if(sick){%>ġ����ȯ�� ���� �����Դϴ�. <br>
							<%sick=false; %>
							<%}%>
		<%=badlist.get(j).getfood_img()%>
		<br>
		<%=badlist.get(j).getfood_name()%>
		<br>
		<%}}sick=true;%>
		<!--20200529 ���� ���� ���� ��� �κ� �� -->
		
		
	

	</h2>




	<button onclick="location.href='index'">���� �ٽ� �����ϱ�</button>
	<form action="/opalproject/sick2" method="POST">
		<%for(int i = 0 ; i<sick_cd.length;i++){ %>
		<input type="hidden" name="sick_cd" value="<%=sick_cd[i]%>">
		<%} %>
		<button>������ ������� �м��ϱ�</button>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}">
	</form>
</body>
</html>