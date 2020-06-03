package my.spring.opalproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@RequestMapping(value="/index")
	public String index() {
		
		return "index";
	}
	
	@RequestMapping(value="/mypage")
	public String mypage() {
		
		return "mypage";
	}
	
	@RequestMapping(value="/meminfomodify")
	public String meminfomodify() {
		
		return "memInfoModify";
	}
	

}
