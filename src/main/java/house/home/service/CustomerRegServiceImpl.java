package house.home.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import house.home.bo.CustomerRegBo;
import house.home.dao.CustomerRegDaoImpl;
import house.home.dto.CustomerRegDto;

@Service
public class CustomerRegServiceImpl implements CustomerRegService {

	@Autowired
	public CustomerRegDaoImpl dao;

	 @Override
	public boolean customerRegService(CustomerRegDto dto) {
		boolean flag= false;
		CustomerRegBo bo=null;
		
		bo=new CustomerRegBo();
		
		bo.setCust_id(dto.getCust_id());
		bo.setUser_name(dto.getUser_name());
		bo.setFull_name(dto.getFull_name());
		bo.setEmail(dto.getEmail());
		bo.setPhone(dto.getPhone());
		bo.setPassword(dto.getPassword());
		bo.setService_type(dto.getService_type());
		java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
		bo.setDate_created(date);
		bo.setDate_updated(date);
		String created="user";
		bo.setCreated_by(created);
	int count=dao.customerRegister(bo);
	if(count>0){
		flag=true;
	}
    return flag;
}
	

}
