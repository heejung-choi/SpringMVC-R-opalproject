package model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.vo.GoodsVO;


//20200624 Eunha ProductDAO

@Repository
public class ProuductDAOImpl implements ProductDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	private final String name = "resource.goodsMapper";
	
	
	@Override //상품목록전체
	public List<GoodsVO> listAll() {
		List<GoodsVO> list = new ArrayList<>();
		list = sqlSession.selectList(name+".selectGoods");
		//System.out.println("리스트 이놈아"+list);
		return list;
	}

	@Override //상품상세보기s
	public GoodsVO listOne(int product_cd) {
		GoodsVO vo = new GoodsVO();
		//System.out.println("product_cd 나와이놈아"+product_cd);
		vo = sqlSession.selectOne(name+".selectone",product_cd);
		//System.out.print("리스트 나와" + vo);
		return vo;
	}

}