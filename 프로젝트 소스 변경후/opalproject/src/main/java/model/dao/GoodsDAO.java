package model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.vo.GoodsVO;



//20200517 Eunha GoodsDAO

@Repository
public class GoodsDAO {
	final String resouece = "resource/mybatis-config.xml";
	@Autowired
	SqlSession session = null;

	public boolean insert(GoodsVO vo) {
		boolean flag = false;
		String statement = "resource.GoodsMapper.insertGoods";
		if (session.insert(statement, vo) == 1) {
			flag = true;
		}
		return flag;
	}
	public boolean update(GoodsVO vo) {
		boolean flag = false;
		String statement = "resource.GoodsMapper.updateGoods";
		System.out.println("session : " + session);
		if (session.update(statement, vo) == 1) {
			flag = true;
		}
		return flag;
	}
	
	
	public List<GoodsVO> listAll(){
		List<GoodsVO> list = null;		
		String statement = "resource.GoodsMapper.listAllGoods";
		list = session.selectList(statement);
			

		return list;
	}
	
	
	
	/*
	 * public List<GoodsVO> listAll(int curPage){ String statement =
	 * "resource.GoodsMapper.listAllGoods"; Map<String,String> map = new
	 * HashMap<>(); PagingControl page = new PagingControl(9,5,getCount(),curPage);
	 * map.put("getWritingStart",Integer.toString(page.getWritingStart()));
	 * map.put("getWritingEnd",Integer.toString(page.getWritingEnd())); return
	 * session.selectList(statement,map); }
	 */
}