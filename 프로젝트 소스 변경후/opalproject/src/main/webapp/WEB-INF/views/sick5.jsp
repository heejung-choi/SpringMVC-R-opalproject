<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
#chartdiv {
	width: 100%;
	height: 600px;
}
</style>
</head>
<body>
<h1>테스트임당</h1>
	<script>
		var xhr = new XMLHttpRequest();

		xhr.onload = function() {
			console.log(xhr.status)
			if (xhr.status == 200) {
				var str = xhr.responseText;
				var data = JSON.parse(str);
				console.log(data)
			}
		};
		xhr.open("GET", "../opalproject/resources/sickjson.json", true);
		xhr.send();
	</script>



</body>
</html>