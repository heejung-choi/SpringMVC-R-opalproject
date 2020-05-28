# 질병데이터 출력 페이지 소스 백업 ver2.

```
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
	<h1>테스트</h1>
	<!--20200526  체크박스 value값 받아오기  -->
	헤헤
	<h1>
		<%
			ArrayList<GoodfoodVO> goodlist = (ArrayList<GoodfoodVO>) request.getAttribute("goodlist");
			ArrayList<BadfoodVO> badlist = (ArrayList<BadfoodVO>) request.getAttribute("badlist");
		%>
	</h1>

	<h3>
		<%
			System.out.println("---------------");
			System.out.println("goodlist 사이즈는?:"+goodlist.size());
			System.out.println("badlist 사이즈는?:"+badlist.size());
		%>
		<%
			List<GoodfoodVO> listA = new ArrayList<GoodfoodVO>();
			List<BadfoodVO> listB = new ArrayList<BadfoodVO>();
			List<GoodfoodVO> listC = new ArrayList<GoodfoodVO>();
			List<GoodfoodVO> temp = new ArrayList<GoodfoodVO>();
			GoodfoodVO tempvo = new GoodfoodVO();
			String food_cd ="";
			String food_name="";
			String sick_cd="";
			String food_img="";
			
			for (int i = 0; i <= goodlist.size() - 1; i++) {
				listA.add(i, goodlist.get(i));
			}
			
			for (int i = 0; i <= badlist.size() - 1; i++) {
				listB.add(i, badlist.get(i));
			}
			
			System.out.println("listA?"+listA.toString());
		
				for(int i=0; i<=goodlist.size()-1; i++){
					for(int j=0; j<=badlist.size()-1; j++){
						if(listA.get(i).getfood_cd().toString().equals(listB.get(j).getfood_cd().toString()))
							continue;
						else
							listC.add(listA.get(i));
					}
				}
				for(int m = 0 ; m<=listC.size()-1;m++){
				 	for(int k = 0 ; k<=listB.size()-1;k++){
						if(listC.get(m).getfood_cd().toString().equals(listB.get(k).getfood_cd().toString()))
							continue;
						else{
							
							tempvo.setfood_cd(listB.get(k).getfood_cd());
							tempvo.setfood_img(listB.get(k).getfood_img());
							tempvo.setfood_name(listB.get(k).getfood_name());
							listC.add(tempvo);
						}
					} 
				}

			String a = listA.get(0).toString();
			System.out.println(a);
			
		%>
		<%for(GoodfoodVO vo : listC) {
%>
<%=vo.getfood_cd() %>
<%=vo.getfood_img() %>
<%=vo.getfood_name() %>
<%} %>


	</h3>

</body>
</html>
```

