package model.dao;


import java.util.List;

import org.springframework.stereotype.Repository;


import model.vo.GoodsVO;



//20200517 Eunha ProductsDAO

@Repository
public interface ProductDAO {
	
	public List<GoodsVO> listAll();
	public GoodsVO listOne(int product_cd);

}

