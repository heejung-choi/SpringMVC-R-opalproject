package my.spring.opalproject;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.dao.ProductDAO;
import model.vo.GoodsVO;


@Controller
public class ProductController {

	@Autowired
	ProductDAO dao;
	
	//listall  GET 상품전체보기
	@RequestMapping(value="/product", method=RequestMethod.GET)
	public ModelAndView productList() {
		//System.out.println("goods 컨트롤러까지는 옴..");
		ModelAndView mav = new ModelAndView();
		List<GoodsVO> list = dao.listAll();
		//System.out.println("리스트 안오냥"+list);
		//for(String food : food_cd)
		//System.out.println("컨트롤러 food_cd값은?"+food);			
		
		mav.addObject("list",list);
		//mav.addObject("food_cd", food_cd);
		mav.setViewName("product");
		return mav;
	}
	//listone GET 상품상세보기
	@RequestMapping(value="/product/{action}", method=RequestMethod.GET)
	public ModelAndView productGET(@PathVariable String action, GoodsVO vo) {
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
				mav.setViewName("product");
			}
		}
		mav.addObject("list",list);
		return mav;
	}
}
