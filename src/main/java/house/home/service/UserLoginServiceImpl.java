package house.home.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import house.home.dao.UserLoginDao;

@Service("loginService")
public class UserLoginServiceImpl implements UserLoginService {

	@Autowired
	private UserLoginDao loginDAO;

	public void setLoginDAO(UserLoginDao loginDAO) {
		this.loginDAO = loginDAO;
	}

	@Override
	public boolean checkLogin(String userName, String userPassword) {
		 System.out.println("In Service class...Check Login");
         return loginDAO.checkLogin(userName, userPassword);
  
	}

}
