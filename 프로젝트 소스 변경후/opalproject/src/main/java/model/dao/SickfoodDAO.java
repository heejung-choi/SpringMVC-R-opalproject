package model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.vo.SickfoodVO;

@Repository
public class SickfoodDAO {
	@Autowired
	SqlSession session = null;

	public List<SickfoodVO> csickData1(String[] sick_cd) {
		List<SickfoodVO> list = new ArrayList<SickfoodVO>();
		List<SickfoodVO> templist = new ArrayList<SickfoodVO>();
		String statment = "resource.DataMapper.csickData1";
		

		
	for(int i = 0 ; i<sick_cd.length;i++) {
		if(session.selectList(statment,sick_cd[i]).size()>=2) {
			templist = session.selectList(statment,sick_cd[i]);
			for(SickfoodVO vo : templist)
				list.add(vo);
		}
		else {
			list.add((SickfoodVO) session.selectOne(statment,sick_cd[i]));
		}
	}
		return list;
	}

}