<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>농산물</h1>
<ul>
 	<li><a href="/shop/list?c=100&l=1">과일/채소</a></li>
	<li><a href="/shop/list?c=200&l=1">곡물/견과</a></li>
	<li><a href="/shop/list?c=300&l=1">건강식품</a></li>
</ul>
</body>
</html>