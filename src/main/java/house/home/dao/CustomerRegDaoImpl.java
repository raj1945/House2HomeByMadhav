package house.home.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import house.home.bo.CustomerRegBo;

@Repository
public class CustomerRegDaoImpl implements CustomerRegistrationDao{

	@Autowired
	private HibernateTemplate ht;

	/*private static final String sql="insert into customer values(?,?,?,?,?,?,?,?,?)";*/
	@Override
	public int customerRegister(CustomerRegBo bo) {
		
	/*int count = jt.update(sql,bo.getUser_name(),bo.getPassword(),bo.getFull_name(),bo.getEmail(),bo.getPhone(),bo.getService_type(),bo.getDate_created(),bo.getDate_updated(),bo.getCreated_by());
*/	
		
		ht.setCheckWriteOperations(false);
	int count=(Integer)ht.save(bo);
		return count;
	}

}
