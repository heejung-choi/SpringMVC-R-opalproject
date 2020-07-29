package model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DataDAO {
   @Autowired
   SqlSession session=null;

   public String csickData1(String sick_cd) {
      String sick_cd1="";
      String statement = "resource.DataMapper.csickData1";
      sick_cd1 = session.selectOne(statement,sick_cd);
      System.out.println(" csickData1 DAO에서 출력"+sick_cd1);
      return sick_cd1;
   }
   
   

}