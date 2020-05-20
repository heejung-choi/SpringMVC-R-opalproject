package my.spring.opalproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//import model.dao.DataDAO;

@Controller
public class DataController {
//	@Autowired
//	DataDAO dao;
	@RequestMapping(value = "/datamain")
	public String dataView() {
		System.out.println("바보");
		return "datamain";
	}


	
}
