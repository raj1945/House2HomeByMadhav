package house.home.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import house.home.bo.CustomRequestRegBo;

@Repository
public class CustomRequestDaoImpl  implements CustomRequestDao{

	@Autowired
	private HibernateTemplate ht;
	
	@Override
	public int customReqRegistration(CustomRequestRegBo bo) {
		ht.setCheckWriteOperations(false);
		int count=(Integer)ht.save(bo);
			return count;
	}

}
