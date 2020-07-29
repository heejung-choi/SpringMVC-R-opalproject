package my.spring.opalproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PayController {
	@RequestMapping(value = "/pay")
	public String pay() {

		return "pay";
	}
}
