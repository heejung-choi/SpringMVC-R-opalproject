package model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.vo.BadfoodVO;
import model.vo.GoodfoodVO;
import model.vo.SickVO;

@Repository
public class SickfoodDAO {
   @Autowired
   SqlSession session = null;
//20200527 희정 goodfood 테이블 출력
   public List<GoodfoodVO> csickData1(String[] sick_cd) {
      List<GoodfoodVO> goodlist = new ArrayList<GoodfoodVO>();
      List<GoodfoodVO> tempgoodlist = new ArrayList<GoodfoodVO>();
      String statment = "resource.DataMapper.csickData1";
      

      
   for(int i = 0 ; i<sick_cd.length;i++) {
      if(session.selectList(statment,sick_cd[i]).size()>=2) {
         tempgoodlist = session.selectList(statment,sick_cd[i]);
         for(GoodfoodVO vo : tempgoodlist)
            goodlist.add(vo);
      }
      else {
         goodlist.add((GoodfoodVO) session.selectOne(statment,sick_cd[i]));
      }
   }
      return goodlist;
   }
   
   
   public List<BadfoodVO> csickData2(String[] sick_cd) {
      List<BadfoodVO> badlist = new ArrayList<BadfoodVO>();
      List<BadfoodVO> tempbadlist = new ArrayList<BadfoodVO>();
      String statment = "resource.DataMapper.csickData2";
            
   for(int i = 0 ; i<sick_cd.length;i++) {
      if(session.selectList(statment,sick_cd[i]).size()>=2) {
         tempbadlist = session.selectList(statment,sick_cd[i]);
         for(BadfoodVO vo : tempbadlist)
            badlist.add(vo);
      }
      else {
         badlist.add((BadfoodVO) session.selectOne(statment,sick_cd[i]));
      }
   }
      return badlist;
   }
   
   public List<SickVO> csickData3(String[] sick_cd) {
      List<SickVO> sicklist = new ArrayList<SickVO>();
      List<SickVO> tempsicklist = new ArrayList<SickVO>();
      String statment = "resource.DataMapper.csickData3";
            
   for(int i = 0 ; i<sick_cd.length;i++) {
      if(session.selectList(statment,sick_cd[i]).size()>=2) {
         tempsicklist = session.selectList(statment,sick_cd[i]);
         for(SickVO vo : tempsicklist)
            sicklist.add(vo);
      }
      else {
         sicklist.add((SickVO) session.selectOne(statment,sick_cd[i]));
      }
   }
      return sicklist;
   }
   
   
   public List<GoodfoodVO> csickData4(String[] food_cd) {
      List<GoodfoodVO> goodlist = new ArrayList<GoodfoodVO>();
      List<GoodfoodVO> tempgoodlist = new ArrayList<GoodfoodVO>();
      String statment = "resource.DataMapper.csickData1";
      

      
   for(int i = 0 ; i<food_cd.length;i++) {
      if(session.selectList(statment,food_cd[i]).size()>=2) {
         tempgoodlist = session.selectList(statment,food_cd[i]);
         for(GoodfoodVO vo : tempgoodlist)
            goodlist.add(vo);
      }
      else {
         goodlist.add((GoodfoodVO) session.selectOne(statment,food_cd[i]));
      }
   }
      return goodlist;
   }
   
   
   
   
   


}