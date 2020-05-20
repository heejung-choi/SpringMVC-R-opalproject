package my.spring.opalproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	
	@RequestMapping(value="/all")
	public String doAll() {
		return "all";
	}
	
	@RequestMapping(value="/generaluser")
	public String doGeneralUser() {
		return "generalUser";
	}
	
	@RequestMapping(value="/salesuser")
	public String doSalesUser() {
		return "salesUser";
	}
	
	@RequestMapping(value="/admin")
	public String doAdmin() {
		return "admin";
	}
}
