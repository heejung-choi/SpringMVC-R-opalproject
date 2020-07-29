package model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.vo.FarmVO;


//20200627 Eunha FarmDAO

@Repository
public class FarmDAOImpl implements FarmDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	private final String name = "resource.farmMapper";
	
	
	@Override //상품목록전체
	public List<FarmVO> listAll() {
		List<FarmVO> list = new ArrayList<>();
		list = sqlSession.selectList(name+".selectFarm");
		//System.out.println("리스트 이놈아"+list);
		return list;
	}

	@Override //상품상세보기s
	public FarmVO listOne2(int farm_cd) {
		FarmVO vo = new FarmVO();
		//System.out.println("product_cd 나와이놈아"+product_cd);
		vo = sqlSession.selectOne(name+".selectone",farm_cd);
		//System.out.print("리스트 나와" + vo);
		return vo;
	}
	
	@Override
	public List<FarmVO> listFarmGap(){
		List<FarmVO> list = new ArrayList<>();
		list = sqlSession.selectList(name+".selectFarmGap");
		return list;
	}
	
	@Override
	public List<FarmVO> listFarmOrganic(){
		List<FarmVO> list = new ArrayList<>();
		list = sqlSession.selectList(name+".selectFarmOrganic");
		return list;
	}

}