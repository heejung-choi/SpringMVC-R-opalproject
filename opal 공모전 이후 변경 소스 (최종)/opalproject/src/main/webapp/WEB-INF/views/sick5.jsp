<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
   prefix="sec"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="model.vo.GoodfoodVO"%>
<%@ page import="model.vo.BadfoodVO"%>
<%@ page import="model.vo.SickVO"%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <%
      ArrayList<GoodfoodVO> foodname = (ArrayList<GoodfoodVO>) request.getAttribute("foodname");
      String[] food_cd = (String[]) request.getAttribute("food_cd");
      ArrayList<Integer> food_cd2 = new ArrayList<>();
   %>

   <%
      for (int i = 0; i < food_cd.length; i++) {
         food_cd2.add(Integer.parseInt(foodname.get(i).getfood_cd()));
      }
   %>

</body>
</html>