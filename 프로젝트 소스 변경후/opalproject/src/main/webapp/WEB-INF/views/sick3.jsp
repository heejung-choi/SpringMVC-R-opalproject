<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="model.vo.GoodfoodVO"%>
<%@ page import="model.vo.BadfoodVO"%>
<%@ page import="model.vo.SickVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#chartdiv {
	width: 100%;
	height: 600px;
}
</style>
</head>
<body>
	<!-- 20200601 희정 그래프 출력부분 js 시작-->
	<script src="https://www.amcharts.com/lib/4/core.js"></script>
	<script src="https://www.amcharts.com/lib/4/charts.js"></script>
	<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
	<!-- 20200601 희정 그래프 출력부분 js 끝-->
	<h1>테스트임당</h1>
	<!-- 20200602 희정 이전 페이지에서 food_cd 받아와서 자바스크립트로 보내기 시작 -->
	<%
		String[] food_cd = (String[]) request.getAttribute("food_cd");
		ArrayList<Integer> food_cd2 = new ArrayList<>();
		for (int i = 0; i < food_cd.length; i++) {
			food_cd2.add(Integer.parseInt(food_cd[i]));
		}
	%>
	<%
		System.out.println(food_cd2.get(1));
	%>
	<%
		for (int i = 0; i < food_cd2.size(); i++) {
	%>
	<input type="hidden" name="food_cd2" value="<%=food_cd2.get(i)%>">
	<%
		}
		System.out.println("이거다" + food_cd2);
	%>
	<!-- 20200602 희정 이전 페이지에서 food_cd 받아와서 자바스크립트로 보내기 끝 -->
	<script>
	/*20200601 희정 자바코드 자바스크립트로 변환 시작  */
		var xhr = new XMLHttpRequest();

		//foodarray 1: 
		var array = new Array();
		array =
	<%=food_cd2%>
		; // Array : food_cd2 배열 (좋은 음식에 대한 코드값)
		var leng = array.length; // 좋은 음식에 대한 코드값(Array 배열)의 길이
		console.log(leng); // 24
		/*20200601 희정 자바코드 자바스크립트로 변환 끝  */
		
		/*20200602 희정 json으로 받아와서 2차원배열에 저장 시작  */
		var foodarr = new Array(21);
		// (foodarr2,foodarr3);  // foodarr[][]; 이차원 빈 배열 선언

		xhr.onload = function() {
			console.log(xhr.status);
			if (xhr.status == 200) {
				var str = xhr.responseText;
				var data = JSON.parse(str);
				for (var i = 0; i < 21; i++) {
					foodarr[i] = [];
				}
				for (var i = 0; i < array.length; i++) {
					foodarr[0].push(data[array[i]].food_name);
					foodarr[1].push(data[array[i]].에너지);
					foodarr[2].push(data[array[i]].수분);
					foodarr[3].push(data[array[i]].단백질);
					foodarr[4].push(data[array[i]].지질);
					foodarr[5].push(data[array[i]].탄수화물);
					foodarr[6].push(data[array[i]].총당류);
					foodarr[7].push(data[array[i]].총식이섬유);
					foodarr[8].push(data[array[i]].칼슘);
					foodarr[9].push(data[array[i]].철);
					foodarr[10].push(data[array[i]].마그네슘);
					foodarr[11].push(data[array[i]].인);
					foodarr[12].push(data[array[i]].칼륨);
					foodarr[13].push(data[array[i]].나트륨);
					foodarr[14].push(data[array[i]].셀레늄);
					foodarr[15].push(data[array[i]].베타카로틴);
					foodarr[16].push(data[array[i]].비타민B1);
					foodarr[17].push(data[array[i]].비타민B2);
					foodarr[18].push(data[array[i]].엽산);
					foodarr[19].push(data[array[i]].비타민C);
					foodarr[20].push(data[array[i]].비타민D);
				}
				/* 				console.log(foodarr[0][3]);
				 console.log(foodarr[18][3]); */
			}
		};
		xhr.open("GET", "../opalproject/resources/sickjson.json", true);
		xhr.send();
		/*20200602 희정 json으로 받아와서 2차원배열에 저장 끝  */
		
		/*20200602 희정 그래프 출력부분 시작  */
		
		/*20200602 희정 그래프 출력부분 끝 */
	</script>



</body>
</html>