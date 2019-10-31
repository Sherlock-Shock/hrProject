package cn.wyu.service;

import java.util.List;
import java.util.Map;

import cn.wyu.pojo.User;

public interface UserService {
	public User queryUserByPhoneAndPsw(String phone,String password) ;
	
	public int addUser(User user) ;
	
	List<User> queryUserByNumber(String number);
	
	List<User> queryUserByPhone(String phone);
	
	List<User> queryUser();
	
	int updateUserByNumber(User user);
	
	int deleteUserByNumber(int number);
	
	List<User> queryUserByNumberAndUsernameAndStatus(User user);
}
