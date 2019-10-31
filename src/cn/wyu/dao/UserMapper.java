package cn.wyu.dao;

import java.util.List;

import java.util.Map;



import cn.wyu.pojo.User;

public interface UserMapper {
    public List<User> queryUserByNumber(String number);
    public List<User> queryUserByPhone(String phone);
    public User queryUserByPhoneAndPsw(Map map);
    
    public int addUser(User user);
    List<User> queryUser();
    
    int updateUserByNumber(User user);
    
    int deleteUserByNumber(int number);
    
    List<User> queryUserByNumberAndUsernameAndStatus(User user);
    
	
}
