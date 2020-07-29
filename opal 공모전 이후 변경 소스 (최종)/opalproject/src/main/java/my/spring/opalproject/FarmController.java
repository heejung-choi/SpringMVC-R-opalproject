package my.spring.opalproject;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.dao.FarmDAO;
import model.dao.GoodsDAO;
import model.vo.FarmVO;
import model.vo.GoodsVO;



@Controller
public class FarmController {

	@Autowired
	FarmDAO dao;
	
	@Autowired
	GoodsDAO gdao;
	
	//listall  GET 농가전체보기
	@RequestMapping(value="/farm", method=RequestMethod.GET)
	public ModelAndView farmList() {
		ModelAndView mav = new ModelAndView();
		List<FarmVO> listAll = dao.listAll();
		List<FarmVO> listFarmGap = dao.listFarmGap();
		List<FarmVO> listFarmOrg = dao.listFarmOrganic();
		
		List<Integer> farmGapCode = new ArrayList<>();
		List<Integer> farmOrgCode = new ArrayList<>();
		for (int i=0; i<listFarmGap.size(); i++) {
			farmGapCode.add(listFarmGap.get(i).getFarm_cd());
			i++;
		}
		for (int i=0; i<listFarmOrg.size(); i++) {
			farmOrgCode.add(listFarmOrg.get(i).getFarm_cd());
			i++;
		}
		mav.addObject("listAll",listAll);
		mav.addObject("farmGapCode",farmGapCode);
		mav.addObject("farmOrgCode",farmOrgCode);
		
	
		mav.setViewName("farm");
		return mav;
	}
	//listone GET 농가상세보기
	@RequestMapping(value="/farm/{action}", method=RequestMethod.GET)
	public ModelAndView farmGET(@PathVariable String action, FarmVO vo) {
		ModelAndView mav = new ModelAndView();

		List<FarmVO> farmList = dao.listAll();
		List<GoodsVO> goodsList = gdao.listFarmGoods(vo.getFarm_cd());
		System.out.println("farm코드 : " +vo.getFarm_cd());
		System.out.println("goodslist 정보 : " + goodsList.size());
	
		
		if(action!=null) {
			if(action.equals("read")) {
				vo = dao.listOne2(vo.getFarm_cd());		//farm정보
		     
				System.out.println("여기는 farm의 Read : "+vo.toString());
				mav.addObject("listOne2",vo);
				mav.setViewName("farmdetails");
			}

		}
		
		mav.addObject("farmList",farmList);
		mav.addObject("goodsList",goodsList);
		
		return mav;
	}
}
