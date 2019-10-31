package cn.wyu.pojo;

public class Student {
	private int id;
	private String name;
	private int yuwen;
	private int shuxue;
	private int yingyu;
	private String password;
	
	
	
	
	public Student() {
		
	}
	
	
	
	public Student(int id, String name, int yuwen, int shuxue, int yingyu,String password) {
		
		this.id = id;
		this.name = name;
		this.yuwen = yuwen;
		this.shuxue = shuxue;
		this.yingyu = yingyu;
		this.password = password;
	}



	public Student(int id, String password) {
		
		this.id = id;
		this.password = password;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getYuwen() {
		return yuwen;
	}
	public void setYuwen(int yuwen) {
		this.yuwen = yuwen;
	}
	public int getShuxue() {
		return shuxue;
	}
	public void setShuxue(int shuxue) {
		this.shuxue = shuxue;
	}
	public int getYingyu() {
		return yingyu;
	}
	public void setYingyu(int yingyu) {
		this.yingyu = yingyu;
	}



	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", yuwen=" + yuwen + ", shuxue=" + shuxue + ", yingyu=" + yingyu
				+ ", password=" + password + "]";
	}
	
	
	
	
	
}
