<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.util.ArrayList" %>
      <%@ page import="model.vo.SickfoodVO" %>
      <%@ page import="java.util.List" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>테스트 </h1>
<!--20200526  체크박스 value값 받아오기  -->
헤헤
<h1>
<% ArrayList<SickfoodVO> list = (ArrayList<SickfoodVO>)request.getAttribute("list");
if(list !=null){
%>

<%for(SickfoodVO vo : list) {
%>
<%=vo.getFood_cd() %>
<%=vo.getFood_img() %>
<%=vo.getFood_name() %>
<%} %>
<%}else{
	System.out.println("리스트 없음");
}	
	%>
</h1>
<h2>
<%System.out.println("---------------"); 


String element0 =list.get(0).getFood_cd().toString();
String element1 =list.get(1).getFood_cd().toString();
String element2 =list.get(2).getFood_cd().toString();
System.out.println(element0);
System.out.println(element1); 
System.out.println(element2); 
System.out.println(list.size()); 
%>

<%= element0 %>
<%= element1 %>
<%= element2 %>
</h2>
<h3>
<%System.out.println("---------------"); 
System.out.println(list.size());

%>
<%
List listA = new ArrayList();
for(int i=0; i<=list.size()-1;i++){
	listA.add(i, list.get(i).getFood_cd().toString());	
}

String a = listA.get(0).toString();
System.out.println(a);
%>

</h3>

</body>
</html>