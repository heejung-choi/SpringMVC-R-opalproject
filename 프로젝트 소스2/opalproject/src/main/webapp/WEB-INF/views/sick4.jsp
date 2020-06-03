<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

#wordchart {
	width: 100%;
	height: 400px;
	
}
#chartdiv{
  width: 100%;
  height: 400px;
 
}


</style>
</head>
<body>
	<h4>
	오팔세대, 오늘이 더 행복한 이유<br>
	</h4>
	<h5>
	인생의 하프타임에서 선 이땅에 수많은 오팔세대를 위해, 오늘 더 행복해질 수 있도록 오팔이 함께하겠습니다!<br>
	건강한 삶을 살기 위해서 58년생이 자주걸리는 질병을 알고, 건강한 삶을 살기 위한 습관을 갖춰야 합니다.<br>
	58년생이 건강하게 살려면 어떻게 해야 할까요? 58년생들은 현재 어떻게 살고있을까요?<br>
	<br>
	58세대의 다빈도 질병을 분석한 결과, 양방 입원: 추간판 , 양방 통원: 치주질환, 한방입원: 등통증, 한방통원: 등통증이 가장 많았습니다.<br>
	최근 3년간 건강보험 환자수를 기준으로 보았을 때에는 추간판장애와 치주질환이 가장 많은것으로 나타났습니다. 그다음으로는 기관지염, 노년백내장, 어깨병변, 고혈압 등이 많았습니다.
	</h5>
	<!-- Resources -->
	<script src="https://www.amcharts.com/lib/4/core.js"></script>
	<script src="https://www.amcharts.com/lib/4/charts.js"></script>
	<script src="https://www.amcharts.com/lib/4/plugins/wordCloud.js"></script>
	<script src="https://www.amcharts.com/lib/4/plugins/forceDirected.js"></script>
	<script src="https://www.amcharts.com/lib/4/themes/material.js"></script>
	<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
	<script src="https://www.amcharts.com/lib/4/themes/frozen.js"></script>

<!-- Chart code -->
<script>
am4core.ready(function() {

// Themes begin
am4core.useTheme(am4themes_frozen);
am4core.useTheme(am4themes_animated);
// Themes end



var chart = am4core.create("chartdiv", am4plugins_forceDirected.ForceDirectedTree);
var networkSeries = chart.series.push(new am4plugins_forceDirected.ForceDirectedSeries())

chart.data = [
  {
    name: "다빈도 질병 TOP5",
        children: [
          {name: "양방입원",
        
        	  children: [
                  { name: "추간판", value: 71671 },
                  { name: "백내장", value: 53514 },
                  { name: "어깨", value: 48760 },
                  { name: "위/결장", value:35076 },
                  { name: "치핵", value: 34798 },
        
        ]
      },{name: "양방통원",
        
            children: [
            	{ name: "치주질환", value: 3643892 },
                { name: "기관지염", value: 2063698},
                { name: "고혈압", value: 1717552 },
                { name: "등통증", value:1126389 },
                { name: "위식도", value: 1023345 }
        
        ]
      },{name: "한방입원",
          
          children: [
          	{ name: "등통증", value: 11990 },
              { name: "요추/골반", value: 9694 },
              { name: "추간판", value: 8892 },
              { name: "무릎", value:2262 },
              { name: "경추간판", value: 2377 }
      
      ]
    },{name: "한방통원",
        
        children: [
        	{ name: "등통증", value: 856029 },
            { name: "요추/골반", value: 487189 },
            { name: "연조직장애", value: 465989 },
            { name: "근육장애", value: 271534 },
            { name: "발목/발염좌", value: 197552 }
    
    ]
  }

    ],
  }
];

networkSeries.dataFields.value = "value";
networkSeries.dataFields.name = "name";
networkSeries.dataFields.children = "children";
networkSeries.nodes.template.tooltipText = "{name}:{value}";
networkSeries.nodes.template.fillOpacity = 1;

networkSeries.nodes.template.label.text = "{name}"
networkSeries.fontSize = 5;

networkSeries.links.template.strokeWidth = 1;

var hoverState = networkSeries.links.template.states.create("hover");
hoverState.properties.strokeWidth = 3;
hoverState.properties.strokeOpacity = 1;

networkSeries.nodes.template.events.on("over", function(event) {
  event.target.dataItem.childLinks.each(function(link) {
    link.isHover = true;
  })
  if (event.target.dataItem.parentLink) {
    event.target.dataItem.parentLink.isHover = true;
  }

})

networkSeries.nodes.template.events.on("out", function(event) {
  event.target.dataItem.childLinks.each(function(link) {
    link.isHover = false;
  })
  if (event.target.dataItem.parentLink) {
    event.target.dataItem.parentLink.isHover = false;
  }
})

}); // end am4core.ready()
</script>
<!-- HTML -->
<h6>최근 1년간 58세대 양방/한방에 대한 입원 외래 질병별 환자수 Top5 [단위:명]<br>
[출처:보건의료빅데이터/다빈도 질병 통계]
</h6>

<div id="chartdiv"></div>
	<!-- Chart code -->

	<script>
		am4core
				.ready(function() {

					// Themes begin
					am4core.useTheme(am4themes_material);
					am4core.useTheme(am4themes_animated);
					// Themes end

					var chart = am4core.create("wordchart",
							am4plugins_wordCloud.WordCloud);
					var series = chart.series
							.push(new am4plugins_wordCloud.WordCloudSeries());

					series.accuracy = 4;
					series.step = 15;
					series.rotationThreshold = 0.7;
					series.maxCount = 200;
					series.minWordLength = 2;
					series.labels.template.margin(4, 4, 4, 4);
					series.maxFontSize = am4core.percent(30);

					series.text ="추간판장애 노년백내장 어깨병변 위장염 결장염 치핵 척추병증 경추간판 무릎장애 무릎 관절증 어지럼증 협심증 전정기능 요추 골반 등통증 백내장 다리골절 발골절 하지정맥류 신장결석 요관결석 장질환 무릎염좌 무릎탈구 추간판장애 노년백내장 어깨병변 위장염 결장염 치핵 척추병증 경추간판 무릎장애 무릎 관절증 어지럼증 협심증 전정기능 요추 골반 등통증 백내장 다리골절 발골절 하지정맥류 신장결석 요관결석 추간판장애 노년백내장 어깨병변 위장염 결장염 치핵 척추병증 경추간판 무릎장애 무릎 관절증 어지럼증 협심증 전정기능 요추 골반 등통증 백내장 다리골절 발골절 추간판장애 노년백내장 어깨병변 위장염 결장염 치핵 척추병증 경추간판 무릎장애 무릎 관절증 어지럼증 협심증 전정기능 요추 골반 등통증 추간판장애 노년백내장 어깨병변 위장염 결장염 치핵 척추병증 경추간판 무릎장애 무릎 관절증 어지럼증 협심증 전정기능 추간판장애 노년백내장 어깨병변 위장염 결장염 치핵 척추병증 경추간판 무릎장애 무릎 관절증 어지럼증 추간판장애 노년백내장 어깨병변 위장염 결장염 치핵 척추병증 경추간판 무릎장애 추간판장애 노년백내장 어깨병변 위장염 결장염 치핵 척추병증 추간판장애 노년백내장 어깨병변 위장염 결장염 추간판장애 노년백내장 어깨병변 위장염 결장염 추간판장애 노년백내장 추간판장애 노년백내장 추간판장애 노년백내장 추간판장애 추간판장애 추간판장애 추간판장애 추간판장애 추간판장애 추간판장애"
					series.colors = new am4core.ColorSet();
					series.colors.passOptions = {}; // makes it loop

					//series.labelsContainer.rotation = 45;
					series.angles = [ 0, -90 ];
					series.fontWeight = "700"

					setInterval(function() {
						series.dataItems.getIndex(
								Math.round(Math.random()
										* (series.dataItems.length - 1)))
								.setValue("value",
										Math.round(Math.random() * 10));
					}, 10000)

				}); // end am4core.ready()
	</script>
<h6>다빈도 질병 58세대 이전 3년간 현황 Top30<br>
[출처:보건의료빅데이터/다빈도 질병 통계]
</h6>		
	<div id="wordchart"></div>
	

</body>
</html>