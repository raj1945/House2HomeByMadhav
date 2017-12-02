package house.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import house.home.bo.CustomerRegBo;
import house.home.command.CustomerRegistrationCommand;
import house.home.dto.CustomerRegDto;
import house.home.service.CustomerRegServiceImpl;

@Controller
@RequestMapping(value = "userRegister")
public class CustomerRegController {

	@Autowired
	private CustomerRegServiceImpl service;
	private static final String WEB_USER_REG_FORM="result";
@GetMapping
public ModelAndView showRegistrationForm(){
ModelAndView modelAndView=
new ModelAndView(WEB_USER_REG_FORM);
modelAndView.addObject("userreg",new CustomerRegBo());
	return modelAndView;
}

	@PostMapping
	public ModelAndView registerCustom(@ModelAttribute("userreg")   CustomerRegistrationCommand customer,   BindingResult result) {
		 String status="User Registration is Failure";
		CustomerRegDto dto = new CustomerRegDto();
	CustomerRegistrationCommand cmd=null;
		cmd=(CustomerRegistrationCommand)customer;
		dto.setUser_name(cmd.getUser_name());
		dto.setEmail(cmd.getEmail());
		dto.setFull_name(cmd.getFull_name()); 
		dto.setPassword(cmd.getPassword());
		dto.setPhone(cmd.getPhone());
		dto.setService_type(cmd.getService_type());
	boolean flag=	service.customerRegService(dto);
	if(flag==true){
		 status="UserRegistration is Success";		
			}
			return new ModelAndView(WEB_USER_REG_FORM,"status",status);
		}
}

