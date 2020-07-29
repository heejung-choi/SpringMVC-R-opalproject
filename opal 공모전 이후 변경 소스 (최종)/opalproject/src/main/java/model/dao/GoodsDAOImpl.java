package model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.vo.GoodfoodVO;
import model.vo.GoodsVO;
import model.vo.GoodfoodVO;

//20200517 Eunha GoodsDAO

@Repository
public class GoodsDAOImpl implements GoodsDAO {

	@Autowired
	SqlSession sqlSession;

	private final String name = "resource.goodsMapper";

	@Override // 상품목록전체
	public List<GoodsVO> listAll() {
		List<GoodsVO> list = new ArrayList<>();
		list = sqlSession.selectList(name + ".selectGoods");
		// System.out.println("리스트 이놈아"+list);
		return list;
	}


	@Override // 상품상세보기
	public GoodsVO listOne(int product_cd) {
		GoodsVO vo = new GoodsVO();
		// System.out.println("product_cd 나와이놈아"+product_cd);
		vo = sqlSession.selectOne(name + ".selectone", product_cd);
		// System.out.print("리스트 나와" + vo);
		return vo;
	}

	public List<GoodfoodVO> Datagoods(String[] food_cd) {
		List<GoodfoodVO> goodlist = new ArrayList<GoodfoodVO>();
		List<GoodfoodVO> tempgoodlist = new ArrayList<GoodfoodVO>();
		String statment = "resource.DataMapper.csickData1";

		for (int i = 0; i < food_cd.length; i++) {
			if (sqlSession.selectList(statment, food_cd[i]).size() >= 2) {
				tempgoodlist = sqlSession.selectList(statment, food_cd[i]);
				for (GoodfoodVO vo : tempgoodlist)
					goodlist.add(vo);
			} else {
				goodlist.add((GoodfoodVO) sqlSession.selectOne(statment, food_cd[i]));
			}
		}
		return goodlist;
	}
	
	@Override
	public List<GoodsVO> listFarmGoods(int farm_cd){
		List<GoodsVO> list = new ArrayList<>();
		list = sqlSession.selectList(name + ".selectGoodsFarm", farm_cd);
		return list;
	}

}