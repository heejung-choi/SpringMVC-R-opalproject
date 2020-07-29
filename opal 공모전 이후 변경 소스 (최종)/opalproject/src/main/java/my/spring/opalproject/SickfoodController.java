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

/*   for (GoodfoodVO i : goodlist)
         System.out.println(i.getfood_name());
      for (BadfoodVO i : badlist)
         System.out.println(i.getfood_name());*/

      mav.setViewName("sick1");
      return mav;
   }

   @RequestMapping(value = "/sick2")
   public ModelAndView sick2(String[] sick_cd) {
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

      mav.setViewName("sick2");
      return mav;
   }
   @RequestMapping(value = "/sick3")
   public ModelAndView sick3(String[] food_cd) {

      
      ModelAndView mav = new ModelAndView();
      List<GoodfoodVO> foodname = dao.csickData4(food_cd);
      
      for (int i = 0; i < food_cd.length; i++)
         System.out.println("DAO에서 food_cd : " + food_cd[i]);      
      System.out.println("foodname 컨트롤러"+foodname);
      mav.addObject("food_cd", food_cd);   
      mav.addObject("foodname", foodname);
      mav.setViewName("sick3");
      return mav;
   }
   @RequestMapping(value = "/sick4")
   public ModelAndView sick4(String[] sick_cd) {
      ModelAndView mav = new ModelAndView();
      mav.setViewName("sick4");
      return mav;
   }

   @RequestMapping(value = "/recipemain")
	public String recipemain() {
		return "recipemain";

	}
   
   @RequestMapping(value = "/recipedetail1")
	public String recipedetail1() {
		return "recipedetail1";

	}
   
   @RequestMapping(value = "/recipedetail2")
	public String recipedetail2() {
		return "recipedetail2";

	}
   @RequestMapping(value = "/recipedetail3")
	public String recipedetail3() {
		return "recipedetail3";

	}
   @RequestMapping(value = "/recipedetail4")
	public String recipedetail4() {
		return "recipedetail4";

	}
   @RequestMapping(value = "/recipedetail5")
	public String recipedetail5() {
		return "recipedetail5";

	}
   @RequestMapping(value = "/recipedetail6")
	public String recipedetail6() {
		return "recipedetail6";

	}



}