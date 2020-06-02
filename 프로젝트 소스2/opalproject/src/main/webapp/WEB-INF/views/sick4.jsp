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
	<!-- Resources -->
	<script src="https://www.amcharts.com/lib/4/core.js"></script>
	<script src="https://www.amcharts.com/lib/4/charts.js"></script>
	<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>

	<!-- Chart code -->
	<script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_animated);
// Themes end


var chart = am4core.create("chartdiv", am4charts.RadarChart);
var chartex =new Array(297,16.3,2.64,0.53,78.89,66.71,4.5,72,1.44,36,113,682,27,3.41,4,0.076,1.11,8,0.23,0);

chart.data = [{
 "영양성분": "에너지",
 "visits": chartex[0]
}, {
 "영양성분": "수분",
 "visits": chartex[1]
}, {
 "영양성분": "단백질",
 "visits": chartex[2]
}, {
 "영양성분": "지질",
 "visits": chartex[3]
}, {
 "영양성분": "탄수화물",
 "visits": chartex[4]
}, {
 "영양성분": "총 당류",
 "visits": chartex[5]
}, {
 "영양성분": "총 식이섬유",
 "visits":chartex[6]
}, {
 "영양성분": "칼슘",
 "visits": chartex[7]
}, {
 "영양성분": "철",
 "visits": chartex[8]
}, {
 "영양성분": "마그네슘",
 "visits": chartex[9]
}, {
 "영양성분": "인",
 "visits": chartex[10]
}, {
 "영양성분": "칼륨",
 "visits": chartex[11]
}, {
 "영양성분": "나트륨",
 "visits": chartex[12]
}, {
 "영양성분": "셀레늄",
 "visits": chartex[13]
}, {
 "영양성분": "베타카로틴",
 "visits": chartex[14]
}, {
 "영양성분": "비타민B1",
 "visits": chartex[15]
}, {
"영양성분": "비타민B2",
"visits": chartex[16]
}, {
 "영양성분": "엽산",
 "visits": chartex[17]
}, {
 "영양성분": "비타민C",
 "visits": chartex[18]
}, {
 "영양성분": "비타민D",
 "visits": chartex[19]
}];

chart.innerRadius = am4core.percent(40)

var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
categoryAxis.renderer.grid.template.location = 0;
categoryAxis.dataFields.category = "영양성분";
categoryAxis.renderer.minGridDistance = 60;
categoryAxis.renderer.inversed = true;
categoryAxis.renderer.labels.template.location = 0.5;
categoryAxis.renderer.grid.template.strokeOpacity = 0.08;

var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
valueAxis.min = 0;
valueAxis.extraMax = 0.1;
valueAxis.renderer.grid.template.strokeOpacity = 0.08;

chart.seriesContainer.zIndex = -10;


var series = chart.series.push(new am4charts.RadarColumnSeries());
series.dataFields.categoryX = "영양성분";
series.dataFields.valueY = "visits";
series.tooltipText = "{valueY.value}"
series.columns.template.strokeOpacity = 0;
series.columns.template.radarColumn.cornerRadius = 5;
series.columns.template.radarColumn.innerCornerRadius = 0;

chart.zoomOutButton.disabled = true;

// as by default columns of the same series are of the same color, we add adapter which takes colors from chart.colors color set
series.columns.template.adapter.add("fill", (fill, target) => { return chart.colors.getIndex(target.dataItem.index);
});

setInterval(()=>{
 am4core.array.each(chart.data, (item)=>{ 

 })
 chart.invalidateRawData();
}, 6000)

categoryAxis.sortBySeries = series;

chart.cursor = new am4charts.RadarCursor();
chart.cursor.behavior = "none";
chart.cursor.lineX.disabled = true;
chart.cursor.lineY.disabled = true;

}); // end am4core.ready()
</script>

	<!-- HTML -->
	<div id="chartdiv"></div>
</body>
</html>