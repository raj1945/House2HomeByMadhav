package house.home.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import house.home.bo.CustomRequestRegBo;
import house.home.dao.CustomRequestDaoImpl;
import house.home.dto.CustomRequestRegDto;

@Service

public class CustomRequestServiceImpl implements CustomRequestService{

	@Autowired
	private CustomRequestDaoImpl dao;
	@Override
	public boolean customReqRegiStration(CustomRequestRegDto dto) {
		boolean flag= false;
		CustomRequestRegBo bo=null;
		
		bo=new CustomRequestRegBo();
		bo.setName(dto.getName());
		bo.setBudget(dto.getBudget());
		bo.setEmail(dto.getEmail());
		bo.setPhone(dto.getPhone());
		bo.setReq_id(dto.getReq_id());
		bo.setCity(dto.getCity());
		bo.setService_type(dto.getService_type());
		bo.setHouse_type(dto.getHouse_type());
		java.sql.Timestamp date = new java.sql.Timestamp(new java.util.Date().getTime());
		bo.setDate_created(date);
		int count=dao.customReqRegistration(bo);
		if(count>0){
			flag=true;
		}
	    return flag;
	}

}
