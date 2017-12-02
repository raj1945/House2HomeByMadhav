package house.home.bo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "customer")
@SuppressWarnings("serial")
public class UserLogin implements Serializable {



@Id
@GeneratedValue
@Column(name = "cust_id", length = 11 )
private Long id;

@Column(name = "user_name")
String userName;

@Column(name = "password")
String userPassword;

public Long getId() {
	return id;
}

public void setId(Long id) {
	this.id = id;
}

public String getUserName() {
	return userName;
}

public void setUserName(String userName) {
	this.userName = userName;
}

public String getUserPassword() {
	return userPassword;
}

public void setUserPassword(String userPassword) {
	this.userPassword = userPassword;
}

}