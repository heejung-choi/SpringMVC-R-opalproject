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
	<!--20200526  ���� üũ�ڽ� value�� �޾ƿ���  -->
	<%
		ArrayList<GoodfoodVO> goodlist = (ArrayList<GoodfoodVO>) request.getAttribute("goodlist");
		ArrayList<BadfoodVO> badlist = (ArrayList<BadfoodVO>) request.getAttribute("badlist");
	%>

	<!--20200528 ���� ���� ����, �������� ���� ����  -->
	<h1>������� �м� ���</h1>
	<h3>
		<%
			System.out.println("---------------");
			System.out.println("goodlist �������?:" + goodlist.size());
			System.out.println("badlist �������?:" + badlist.size());
			System.out.println("goodlist ��"+goodlist.toString());
			System.out.println("badlist ��"+badlist.toString());
		%>
		
		<%
			List<String> listA = new ArrayList<String>();
			List<String> listB = new ArrayList<String>();
			List<String> listC = new ArrayList<String>();
			List<String> listD = new ArrayList<String>();

			for (int i = 0; i <= goodlist.size() - 1; i++) {
				listA.add(i, goodlist.get(i).getfood_cd().toString());
			}

			for (int i = 0; i <= badlist.size() - 1; i++) {
				listB.add(i, badlist.get(i).getfood_cd().toString());
			}
			boolean flag = true;
			for (int i = 0; i <= listA.size() - 1; i++) {
				for (int j = 0; j <= listB.size() - 1; j++) {
					if (listA.get(i).equals(listB.get(j))) {
						System.out.println("A�� ����?" + listA.get(i));
						System.out.println("B�� ����" + listB.get(j));
						flag = false;
						break;
					}
				}
				if (flag) {
					listC.add(listA.get(i));				
				}
				flag = true;
			}

			System.out.println("---------------------");
			boolean flag2 = true;
			for (int i = 0; i <= listB.size() - 1; i++) {
				for (int j = 0; j <= listA.size() - 1; j++) {
					if (listA.get(j).equals(listB.get(i))) {
						System.out.println("A�� ����?" + listA.get(j));
						System.out.println("B�� ����" + listB.get(i));
						flag2 = false;
						break;
					}
				}
				if (flag2) {
					listD.add(listB.get(i));				
				}
				flag2 = true;
			}
			
			System.out.println("listA?" + listA.toString());
			System.out.println("listB?" + listB.toString());
			System.out.println("listC?" + listC.toString());
			System.out.println("listD?" + listD.toString());
			System.out.println("goodlist?" + goodlist.toString());

			ArrayList<Integer> delgoodList = new ArrayList<>();
			boolean goodFlag = true;
			for (int i = 0; i <= goodlist.size() - 1; i++) {
				for (int j = 0; j <= listC.size() - 1; j++) {
					if (goodlist.get(i).getfood_cd().toString().equals(listC.get(j))) {
						goodFlag = false;
						break;
					}
				}
				if (goodFlag) {

					delgoodList.add(i);
				}
				goodFlag = true;
			}
			System.out.println("golist�׽�Ʈ" + goodlist.get(0).toString());
			System.out.println("delgoodList��?" + delgoodList.toString());

			ArrayList<Integer> delbadList = new ArrayList<>();
			boolean badFlag = true;
			for (int i = 0; i <= badlist.size() - 1; i++) {
				for (int j = 0; j <= listD.size() - 1; j++) {
					if (badlist.get(i).getfood_cd().toString().equals(listD.get(j))) {
						badFlag = false;
						break;
					}
				}
				if (badFlag) {
					delbadList.add(i);
				}
				badFlag = true;
			}

			System.out.println("delbadList��?" + delbadList.toString());

			for (int i = 0; i < delgoodList.size(); i++) {
				int delIndex = delgoodList.get(i);
				goodlist.remove(delIndex - i);
				System.out.println("������ �ε���" + (delIndex - i));
			}
		%>

		<%
			System.out.println("goodlist?" + goodlist.toString());
		%>
		
		<h1>-------------------------------------------</h1>
		<h1>�������� ��� �κ�</h1>
		<%
			for (GoodfoodVO vo : goodlist) {
		%>
		<div>
		<%=vo.getfood_img()%>
		<br>
		<%=vo.getfood_name()%>
		<%
			}
		%>
		</div>
		<h1>-------------------------------------------</h1>
		<h1>�������� ��� �κ�</h1>
		<%
			for (BadfoodVO vo : badlist) {
		%>
		<div>		
		<%=vo.getfood_img()%>
		<br>
		<%=vo.getfood_name()%>
		</div>
		<%
			}
		%>




	</h3>

</body>
</html>