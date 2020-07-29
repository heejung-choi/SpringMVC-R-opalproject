package model.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import model.vo.FarmVO;



//20200627 FarmDAO

@Repository
public interface FarmDAO {
	
	public List<FarmVO> listAll();
	public FarmVO listOne2(int farm_cd);
	public List<FarmVO> listFarmGap();
	public List<FarmVO> listFarmOrganic();

}
