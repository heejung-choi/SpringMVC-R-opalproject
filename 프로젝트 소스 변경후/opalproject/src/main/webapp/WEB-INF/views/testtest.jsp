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
   <h1>�׽�Ʈ</h1>
   <!--20200526  üũ�ڽ� value�� �޾ƿ���  -->
   ����
   <h1>
      <%
         ArrayList<GoodfoodVO> goodlist = (ArrayList<GoodfoodVO>) request.getAttribute("goodlist");
         ArrayList<BadfoodVO> badlist = (ArrayList<BadfoodVO>) request.getAttribute("badlist");
      %>
   </h1>

   <h3>
      <%
         System.out.println("---------------");
         System.out.println("goodlist �������?:" + goodlist.size());
         System.out.println("badlist �������?:" + badlist.size());
      %>
      <%
         List<String> listA = new ArrayList<String>();
         List<String> listB = new ArrayList<String>();
         List<String> listC = new ArrayList<String>();

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

         System.out.println("listA?" + listA.toString());
         System.out.println("listB?" + listB.toString());
         System.out.println("listC?" + listC.toString());
         System.out.println("goodlist?" + goodlist.toString());
         
         ArrayList<Integer> delList = new ArrayList<>();
         boolean delFlag = true;
         for (int i = 0; i <= goodlist.size() - 1; i++) {
            for (int j = 0; j <= listC.size() - 1; j++) {
                if (goodlist.get(i).getfood_cd().toString().equals(listC.get(j))) {            
                   delFlag = false;
                   break;   
               }
            }     
            if(delFlag){
                delList.add(i);
            }
             delFlag = true;
        }

          for(int i=0; i < delList.size(); i++){
              int delIndex = delList.get(i);
               goodlist.remove(delIndex);
            }   
         
         
         System.out.println("goodlist?" + goodlist.toString());
      %>
   </h3>

</body>
</html>