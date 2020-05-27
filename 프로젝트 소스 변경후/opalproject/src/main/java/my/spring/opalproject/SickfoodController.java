package my.spring.opalproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.dao.SickfoodDAO ;
import model.vo.SickfoodVO;

@Controller
public class SickfoodController {
		@Autowired
		SickfoodDAO dao;

/*
		@RequestMapping(value = "/sick1")
	public String sick1() {
		return "sick1";

	}
	*/
				
		@RequestMapping(value = "/sick1", method = RequestMethod.GET)
		public ModelAndView sick1(String[] sick_cd) {
			for(int i = 0 ; i<sick_cd.length;i++)
				System.out.println("sick_cd : " + sick_cd[i]);
			ModelAndView mav = new ModelAndView();
			List<SickfoodVO> list =dao.csickData1(sick_cd);
			mav.addObject("list",list);
			for(SickfoodVO i : list)
				System.out.println(i.getFood_name());
			mav.setViewName("sick1");
			return mav;			
		}
		
		
		
		
}