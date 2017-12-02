package house.home.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import house.home.bo.UserLogin;
import house.home.dto.LoginForm;
import house.home.service.UserLoginService;

@Controller
@RequestMapping("userLogin")
public class LoginController {

	@Autowired
	public UserLoginService loginService;
	


	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView processForm(@ModelAttribute("userl")@Valid LoginForm loginForm, BindingResult result,
			Map model) {

		
		if (result.hasErrors()) {
			System.out.println("hi errroo1");
			return new ModelAndView("index");
		}
		
		boolean userExists = loginService.checkLogin(loginForm.getUserName(),
                loginForm.getPassword());
		if(userExists){
			model.put("loginForm", loginForm);
			System.out.println("hi exist");
			return new ModelAndView("loginsuccess");
		}else{
			String status="Invalid user";
			return new ModelAndView("index","status",status);
		}

	}
}
