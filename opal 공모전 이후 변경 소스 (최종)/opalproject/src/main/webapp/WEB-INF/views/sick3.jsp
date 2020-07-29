<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
   prefix="sec"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="model.vo.GoodfoodVO"%>
<%@ page import="model.vo.BadfoodVO"%>
<%@ page import="model.vo.SickVO"%>
<html class="no-js" lang="">
<head>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>OPAL :: 결과 화면</title>
<link rel="icon" type="image/png" sizes="32x32"
   href="resources/images/Opal.png">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/flexslider.css">
<link rel="stylesheet" href="resources/css/jquery.fancybox.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/ourcss/sick3.css">
<link rel="stylesheet" href="resources/css/responsive.css">
<link rel="stylesheet" href="resources/css/animate.min.css">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link
   href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
   rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
   $(document).ready(function() {
      $("#nav ul#sub-menu").hide();
      $("#nav ul#main-menu li").click(function() {
         $("ul", this).slideToggle("fast");
      });
   });
</script>
<style>
#chartdiv {
   width: 100%;
   height: 600px;
}
</style>
</head>
<body>


   <section class="banner" role="banner">
      <header id="header">
         <div id="nav" class="header-content clearfix">
            <a class="logo" href="/opalproject/index"> <img
               src="resources/images/Opal.png" width="100" alt=""></a>
            <nav class="navigation" role="navigation">
               <ul id="main-menu" class="primary-nav">
                  <li><a href="/opalproject/about">오팔이란</a></li>
                  <li><a href="/opalproject/team">팀소개</a></li>
                  <!-- 로그인중이 아닐 때에만 Login 버튼이 보임  -> taglib ( security/tags ) 때문에 가능 -->
                  <sec:authorize access="isAnonymous()">
                     <li><a href='${pageContext.request.contextPath}/signin'>로그인</a></li>
                     <li><a href="/opalproject/signup">회원가입</a></li>
                  </sec:authorize>
                  <sec:authorize access="isAuthenticated()">
                     <li><a href="#">회원정보</a>
                        <ul id="sub-menu">
					        <li><a href="/opalproject/meminfomodify">회원정보 수정</a></li>
					        <li><a href="/opalproject/cart/list">장바구니</a></li>
                        </ul>
                     <li><form action="${pageContext.request.contextPath}/logout"
                           method="POST">
                           <input id="logoutBtn" class="logout_button" type="submit"
                              value="로그아웃" /> <input type="hidden"
                              name="${_csrf.parameterName}" value="${_csrf.token}">
                        </form></li>
                  </sec:authorize>
               </ul>
            </nav>
            <a href="#" class="nav-toggle">Menu<span></span></a>
         </div>
         <!-- header content -->
      </header>
      <!-- header -->
   </section>
   <!-- banner -->
 <h2>좋은 식품 영양성분 분석 시각화</h2>
<section class="sickbox">
   <!-- 20200601 희정 그래프 출력부분 js 시작-->
   <script src="https://www.amcharts.com/lib/4/core.js"></script>
   <script src="https://www.amcharts.com/lib/4/charts.js"></script>
   <script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
   <!-- 20200601 희정 그래프 출력부분 js 끝-->
   <!-- 20200602 희정 이전 페이지에서 food_cd 받아와서 자바스크립트로 보내기 시작 -->
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
   <script>      
      
   /*20200601 희정 자바코드 자바스크립트로 변환 시작  */
      function changeall(all){
      console.log("all값은?"+all);
      var xhr = new XMLHttpRequest();

      //foodarray 1: 
      var array = new Array();
      array.push(all);
      ; // Array : food_cd2 배열 (좋은 음식에 대한 코드값)
      var leng = array.length; // 좋은 음식에 대한 코드값(Array 배열)의 길이
      console.log(leng); // 24
      /*20200601 희정 자바코드 자바스크립트로 변환 끝  */
      
      /*20200602 희정 json으로 받아와서 2차원배열에 저장 시작  */
      var foodarr = new Array(21);
      // (foodarr2,foodarr3);  // foodarr[][]; 이차원 빈 배열 선언
      for (var i = 0; i < 21; i++) {
               foodarr[i] = [];
            }
      
      xhr.onload = function() {
         console.log(xhr.status);
         if (xhr.status == 200) {
            var str = xhr.responseText;
            var data = JSON.parse(str);
            
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
            console.log("출력시작");
            console.log(foodarr[0][0]);
            console.log(foodarr[1][0]);
            console.log(foodarr[2][0]);
            console.log(foodarr[18][0]);
            
            /*20200602 희정 그래프 출력부분 시작  */
            am4core.ready(function () {
            
            // Themes begin
            am4core.useTheme(am4themes_animated);
            // Themes end
            
            
            var chart = am4core.create("chartdiv", am4charts.RadarChart);
            var chartex =new Array(297,16.3,2.64,0.53,78.89,66.71,4.5,72,1.44,36,113,682,27,3.41,4,0.076,1.11,8,0.23,0);
            
            console.log("중간출력");
            console.log(foodarr[0][0]);
            console.log(foodarr[1][0]);
            console.log(foodarr[2][0]);
            console.log(foodarr[18][0]);
            
            chart.data = [{
             "영양성분": "에너지",
             "visits": foodarr[1][0]
            }, {
             "영양성분": "수분",
             "visits": foodarr[2][0]
            }, {
             "영양성분": "단백질",
             "visits": foodarr[3][0]
            }, {
             "영양성분": "지질",
             "visits": foodarr[4][0]
            }, {
             "영양성분": "탄수화물",
             "visits": foodarr[5][0]
            }, {
             "영양성분": "총 당류",
             "visits": foodarr[6][0]
            }, {
             "영양성분": "총 식이섬유",
             "visits":foodarr[7][0]
            }, {
             "영양성분": "칼슘",
             "visits": foodarr[8][0]
            }, {
             "영양성분": "철",
             "visits": foodarr[9][0]
            }, {
             "영양성분": "마그네슘",
             "visits": foodarr[10][0]
            }, {
             "영양성분": "인",
             "visits": foodarr[11][0]
            }, {
             "영양성분": "칼륨",
             "visits": foodarr[12][0]
            }, {
             "영양성분": "나트륨",
             "visits": foodarr[13][0]
            }, {
             "영양성분": "셀레늄",
             "visits": foodarr[14][0]
            }, {
             "영양성분": "베타카로틴",
             "visits": foodarr[15][0]
            }, {
             "영양성분": "비타민B1",
             "visits": foodarr[16][0]
            }, {
            "영양성분": "비타민B2",
            "visits": foodarr[17][0]
            }, {
             "영양성분": "엽산",
             "visits": foodarr[18][0]
            }, {
             "영양성분": "비타민C",
             "visits": foodarr[19][0]
            }, {
             "영양성분": "비타민D",
             "visits": foodarr[20][0]
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
            /*20200602 희정 그래프 출력부분 끝 */
            
            
         }
      };

      xhr.open("GET", "../opalproject/resources/sickjson.json", true);
      xhr.send();
      /*20200602 희정 json으로 받아와서 2차원배열에 저장 끝  */


   }   
   </script>
<div id = "box">
   <%
      for (int i = 0; i < food_cd2.size(); i++) {
   %>
   <div  id = "box2">
   <button id="box4" class="box" onclick="changeall(<%=food_cd2.get(i)%>)" name="food" ><%=foodname.get(i).getfood_name()%></button>
   </div>
   <%
      }
   %>
</div>
</section>
   <!-- HTML -->
   <div id="chartdiv"></div>

<br>
   <h3>질병을 다시 선택하시려면 질병 다시 선택하기 버튼을 눌러주세요.</h3>
   <div class="foodwrapper">
   <button class="check_sumit" onclick="location.href='index'">질병 다시 선택하기</button>
   </div>
  
   <h3>58세대 더 많은 분석자료를 보시려면 건강한 식생활 알아보기 버튼을 눌러 주세요.</h3>
   <div class="foodwrapper">
   <button class="check_sumit" onclick="location.href='sick4'">건강한 식생활 알아보기</button>
   </div>
    
   <form>
      <input type="hidden" name="${_csrf.parameterName}"
         value="${_csrf.token}">
   </form>

   <footer class="footer">
      <div class="footer-top">
         <div class="container">
            <div class="row">
               <div class="footer-col col-md-4"></div>
               <div class="footer-col col-md-4">
                  <img src="resources/images/Opal.png" width="150" alt="">
                  <h5>with Health</h5>
               </div>
               <div class="footer-col col-md-4"></div>
            </div>
         </div>
      </div>
   </footer>
   <!-- footer -->

</body>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
      window.jQuery
            || document
                  .write('<script src="resources/js/jquery.min.js"><\/script>')
   </script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/jquery.flexslider-min.js"></script>
<script src="resources/js/jquery.fancybox.pack.js"></script>
<script src="resources/js/jquery.waypoints.min.js"></script>
<script src="resources/js/retina.min.js"></script>
<script src="resources/js/modernizr.js"></script>
<script src="resources/js/main.js"></script>
</html>