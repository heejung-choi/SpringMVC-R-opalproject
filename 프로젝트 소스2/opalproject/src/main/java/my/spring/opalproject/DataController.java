package my.spring.opalproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class DataController {

		@Autowired

/*
 * 		DataDAO dao;
	@RequestMapping(value = "/datasick1", method = RequestMethod.GET)
	public ModelAndView datasick1(DataVO vo) {
		ModelAndView mav = new ModelAndView();
	    List<DataVO> list =dao.csickData1();
	    mav.addObject("list", list);
	    mav.setViewName("datasick1");
		return mav;
			
	}*/
		
	@RequestMapping(value = "/datasick1")
	public String datasick1() {
		return "datasick1";

	}
	
	@RequestMapping(value = "/datasick2")
	public String datasick2() {
		return "datasick2";

	}
	
	
	@RequestMapping(value = "/datasick3")
	public String datasick3() {
		return "datasick3";

	}
	
	@RequestMapping(value = "/datasick4")
	public String datasick4() {
		return "datasick4";

	}
	
	@RequestMapping(value = "/datasick5")
	public String datasick5() {
		return "datasick5";

	}
	
}