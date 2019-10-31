package cn.wyu.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import cn.wyu.dao.UserMapper;
import cn.wyu.pojo.User;
import cn.wyu.service.UserService;


@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserMapper userMapper;

	
	
	@Override
	public User queryUserByPhoneAndPsw( String phone,String password) {
		
		Map map = new HashMap<String,String>();
		map.put("phone", phone);
		map.put("password", password);
		
		User user = userMapper.queryUserByPhoneAndPsw(map);
		return user;
		
	}



	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		
		return userMapper.addUser(user);
	}



	@Override
	public List<User> queryUserByNumber(String number) {
		// TODO Auto-generated method stub
		return userMapper.queryUserByNumber(number);
				
	}



	@Override
	public List<User> queryUserByPhone(String phone) {
		// TODO Auto-generated method stub
		return userMapper.queryUserByPhone(phone);
	}



	@Override
	public List<User> queryUser() {
		// TODO Auto-generated method stub
		return userMapper.queryUser();
	}



	@Override
	public int updateUserByNumber(User user) {
		// TODO Auto-generated method stub
		return userMapper.updateUserByNumber(user);
	}



	@Override
	public int deleteUserByNumber(int number) {
		// TODO Auto-generated method stub
		return userMapper.deleteUserByNumber(number);
	}



	@Override
	public List<User> queryUserByNumberAndUsernameAndStatus(User user) {
		// TODO Auto-generated method stub
		return userMapper.queryUserByNumberAndUsernameAndStatus(user);
	}

}
