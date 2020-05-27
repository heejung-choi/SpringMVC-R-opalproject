package model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.vo.GoodfoodVO;

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
	
	
	
	


}