package model.dao;


import java.util.List;

import org.springframework.stereotype.Repository;


import model.vo.GoodsVO;




//20200517 Eunha GoodsDAO

@Repository
public interface GoodsDAO {
	
	public List<GoodsVO> listAll();
	public GoodsVO listOne(int product_cd);
	public List<GoodsVO> listFarmGoods(int farm_cd);

}
