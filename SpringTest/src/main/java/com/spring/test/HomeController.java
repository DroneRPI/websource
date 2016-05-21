package com.spring.test;
 
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.test.service.LoginService;
 
@Controller
public class HomeController {
     
    @Autowired
    LoginService LoginService;
     
    @RequestMapping("/memberlist.do")
    public String home(@RequestParam Map<String, Object> paramMap, ModelMap model) {
         
        model.addAttribute("logins", LoginService.getLoginList());       
         
        return "memberlist";
    }

    
    
	@RequestMapping("/database.do")
	public void list(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{
		model.put("datas", LoginService.getList(paramMap));
	}
	

    @RequestMapping("/GeneralMenu.do")
	public void general(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{
	}

	
    
    @RequestMapping("/map.do")
	public void map(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{
	}
    
    
    
    @RequestMapping("/login.do")
	public void login(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{
	}
    @RequestMapping("/menu.do")
	public void menu(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{
	}
    
    
    
	@RequestMapping("/writeForm.do")
	public void writeForm(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{

	}
	@RequestMapping("/writeProc.do")
	public ModelAndView writeProc(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{

		//Form ���� �Ѿ� ���� ��  ���  	paramMap �ȿ� Form ���� �Ѿ� ���� ���� ����	
		System.out.println("id = " + paramMap.get("id"));
		System.out.println("pwd = " + paramMap.get("pwd"));
		System.out.println("names = " + paramMap.get("names"));
		System.out.println("email = " + paramMap.get("email"));
		System.out.println("phone = " + paramMap.get("phone"));
		//�����ϱ� ���Ͽ� paramMap �� �ѱ��.
		int writeCnt = LoginService.writeProc(paramMap);
		
		System.out.println(writeCnt + "�� �ԷµǾ����ϴ�/");
		
		//ó�� �� redirect
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/writeForm.do");
		return mav;

	}
	
     
}