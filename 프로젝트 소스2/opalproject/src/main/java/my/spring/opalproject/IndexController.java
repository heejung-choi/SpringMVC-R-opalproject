package my.spring.opalproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping(value="/index")
	public String index() {
		
		return "index";
	}
	
	
	@RequestMapping(value="/index2")
	public String index2() {
		
		return "index2";
	}

}
