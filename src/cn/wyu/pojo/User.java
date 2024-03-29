package cn.wyu.pojo;

import java.util.Date;

import com.alibaba.fastjson.annotation.JSONField;

public class User {

	private String number;
	private String password;
	private int status;
	private String phone;
	//@JSONField(format="yyyy-MM-dd")
	private Date createdate;
	private String username;
	private String remark;
	
	
	
	
    public User() {
		
		
	}
	
    
    
    
	public User(String number, String password, int status, String phone) {
		
		this.number = number;
		this.password = password;
		this.status = status;
		this.phone = phone;
		
	}




	public User(String password, String phone) {
		
		this.password = password;
		this.phone = phone;
	}
	
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getCreatedate() {
		return createdate;
	}
	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString() {
		return "User [number=" + number + ", password=" + password + ", status=" + status + ", phone=" + phone
				+ ", createdate=" + createdate + ", username=" + username + ", remark=" + remark + "]";
	}
	
	

}
