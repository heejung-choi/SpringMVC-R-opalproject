package my.spring.opalproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.dao.SickfoodDAO;
import model.vo.BadfoodVO;
import model.vo.GoodfoodVO;
import model.vo.SickVO;

@Controller
public class SickfoodController {
	@Autowired
	SickfoodDAO dao;

	/*
	 * @RequestMapping(value = "/sick1") public String sick1() { return "sick1";
	 * 
	 * }
	 */

	@RequestMapping(value = "/sick1")
	public ModelAndView sick1(String[] sick_cd) {
		for (int i = 0; i < sick_cd.length; i++)
			System.out.println("sick_cd : " + sick_cd[i]);

		ModelAndView mav = new ModelAndView();
		List<GoodfoodVO> goodlist = dao.csickData1(sick_cd);
		List<BadfoodVO> badlist = dao.csickData2(sick_cd);
		List<SickVO> sicklist = dao.csickData3(sick_cd);

		mav.addObject("goodlist", goodlist);
		mav.addObject("badlist", badlist);
		mav.addObject("sicklist", sicklist);
		mav.addObject("sick_cd", sick_cd);

/*	for (GoodfoodVO i : goodlist)
			System.out.println(i.getfood_name());
		for (BadfoodVO i : badlist)
			System.out.println(i.getfood_name());*/

		mav.setViewName("sick1");
		return mav;
	}

	@RequestMapping(value = "/sick2")
	public ModelAndView sick2(String[] sick_cd) {
		for (int i = 0; i < sick_cd.length; i++)
			System.out.println("2222222sick_cd : " + sick_cd[i]);

		ModelAndView mav = new ModelAndView();
		List<GoodfoodVO> goodlist = dao.csickData1(sick_cd);
		List<BadfoodVO> badlist = dao.csickData2(sick_cd);

		mav.addObject("goodlist", goodlist);
		mav.addObject("badlist", badlist);

		for (GoodfoodVO i : goodlist)
			System.out.println(i.getfood_name());
		for (BadfoodVO i : badlist)
			System.out.println(i.getfood_name());

		mav.setViewName("sick2");
		return mav;
	}

}