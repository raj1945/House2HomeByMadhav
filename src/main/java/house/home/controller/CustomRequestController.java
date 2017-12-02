package house.home.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import house.home.bo.CustomRequestRegBo;
import house.home.bo.CustomerRegBo;
import house.home.command.CustomRequestCommand;
import house.home.command.CustomerRegistrationCommand;
import house.home.dto.CustomRequestRegDto;
import house.home.dto.CustomerRegDto;
import house.home.service.CustomRequestServiceImpl;
import house.home.service.CustomerRegServiceImpl;

@Controller
@RequestMapping(value = "customReqregister")
public class CustomRequestController {

	@Autowired
	private CustomRequestServiceImpl service;
	private static final String WEB_USER_REG_FORM="result";
@GetMapping
public ModelAndView showRegistrationForm(){
ModelAndView modelAndView=
new ModelAndView(WEB_USER_REG_FORM);
modelAndView.addObject("customData",new CustomRequestRegBo());
	return modelAndView;
}

	@PostMapping
	public ModelAndView registerCustom(@ModelAttribute("customData")   CustomRequestCommand crcommand,   BindingResult result) {
		 String status=" Registration is Failure";
		CustomRequestRegDto dto = new CustomRequestRegDto();
	CustomRequestCommand cmd=null;
		cmd=(CustomRequestCommand)crcommand;
		dto.setName(cmd.getName());
		dto.setEmail(cmd.getEmail());
		dto.setPhone(cmd.getPhone());
		dto.setHouse_type(cmd.getHouse_type());
		dto.setBudget(cmd.getBudget());
		dto.setCity(cmd.getCity());
		dto.setService_type(cmd.getService_type());
	boolean flag=	service.customReqRegiStration(dto);
	if(flag==true){
		 status="UserRegistration is Success";		
			}
			return new ModelAndView(WEB_USER_REG_FORM,"status",status);
		}
}

