package my.spring.opalproject;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.dao.GoodsDAO;
import model.vo.GoodsVO;
import service.CustomCustomerDetailsService;


@Controller
public class GoodsController {
	@Autowired
	GoodsDAO dao;
	
	//listall  GET 상품전체보기
	@RequestMapping(value="/goods")
	public ModelAndView goodsList(String[] food_cd) {
		System.out.println("goods 컨트롤러까지는 옴..");
		ModelAndView mav = new ModelAndView();
		List<GoodsVO> list = dao.listAll();
		System.out.println("리스트 안오냥"+list);
		
		for(String food : food_cd)
		System.out.println("컨트롤러 food_cd값은?"+food);			
		
		
		mav.addObject("list",list);
		mav.addObject("food_cd", food_cd);
		mav.setViewName("goods");
		return mav;
	}
	//listone GET 상품상세보기
	@RequestMapping(value="/goods/{action}", method=RequestMethod.GET)
	public ModelAndView goodsGET(@PathVariable String action, GoodsVO vo, Principal principal) {
		ModelAndView mav = new ModelAndView();
		
		List<GoodsVO> list = dao.listAll();
		
		if(action!=null) {
			if(action.equals("read")) {
				vo = dao.listOne(vo.getProduct_cd());
				list = dao.listAll();

				mav.addObject("listOne",vo);
				mav.setViewName("details");
			}else {
				vo = dao.listOne(vo.getProduct_cd());
				list = dao.listAll();
				mav.addObject("listOne",vo);
				mav.setViewName("goods");
			}
		}
		mav.addObject("list",list);
		return mav;
	}
	
}
