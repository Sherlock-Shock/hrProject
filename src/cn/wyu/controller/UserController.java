package cn.wyu.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.wyu.pojo.User;
import cn.wyu.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	public UserService userService;
	
	
	@ResponseBody
	@RequestMapping("/login")
	public String login(@RequestParam("number") String number,@RequestParam("password") String password,HttpServletRequest request) {
		
		 List<User> users = userService.queryUserByNumber(number);
		if(users.size()>0) {
			if(users.get(0).getPassword().equals(password)) {
				HttpSession session = request.getSession();		
				session.setAttribute("user", users);
				System.out.println("登陆成功");
				return JSON.toJSONString(users);
			}else {
					
				System.out.println("密码错误");
				return "0";
			}
			
		}else {
			System.out.println("没有这个用户");
			return "0";
		
		}
		
	}
	
	
	@ResponseBody
	@RequestMapping("/register")
	public String addUser(User user) {
		
		
		
			user.setCreatedate(new Date());
			int flag = userService.addUser(user);
			if(flag!=0) {
				System.out.println("注册成功");
			}else { 
				System.out.println("注册失败");
			}
			
			return flag+"";	
		
	}
	
	@ResponseBody
	@RequestMapping("/checkNumber")
	public String checkNumber(String number ) {
		
		List<User> list = userService.queryUserByNumber(number);
		String data = "0";
		
		if(list.size()>0) {
			data="1";
		}
		
		return data;
		
	}
	
	@ResponseBody
	@RequestMapping("/checkPhone")
	public String checkPhone(String phone ) {
		
		List<User> list = userService.queryUserByPhone(phone);
		String data = "0";
		
		if(list.size()>0) {
			data="1";
		}
		
		return data;
		
	}
	
	@RequestMapping(value="/SelectUsers",produces= {"application/json;charset=utf-8"})
	@ResponseBody
	public String queryUsersByPage(int page ,int rows) {		
		
		//System.out.println(page+"-----------"+rows+number+username+status);
		
		PageHelper.startPage(page,rows);
		List<User> list = userService.queryUser();
		PageInfo pageinfo = new PageInfo(list);
		
		for(User u:list) {
			System.out.println(u);
		}
		System.out.println(pageinfo.getTotal());
		String listString = JSON.toJSONString(list);
		String json ="{\"total\":"+pageinfo.getTotal()+",\"rows\":"+listString+"}";
		return json;
	}
	
	
	@ResponseBody
	@RequestMapping("/updateUser")
	public String updateUser(User user) {
		
		
		System.out.println("user-------->"+user);
		int flag = userService.updateUserByNumber(user);
		String info ="更新失败";
		if(flag>0) {
			info="更新成功";
			return "1";
		}else {
			return "";
		}
		
	}
	
	@ResponseBody
	@RequestMapping(value="/deleteUser",produces= {"application/text;charset=utf-8"})
	public String deleteUser(int number ) {
		
		
		System.out.println("number-------->"+number);
		int flag = userService.deleteUserByNumber(number);
		String info ="删除失败";
		if(flag>0) {
			info="删除成功";
			return info;
		}else {
			return info;
		}
		
	}
	
	@ResponseBody
	@RequestMapping(value="/searchUser",produces= {"application/json;charset=utf-8"})
	public String searchUser(User user,int page ,int rows  ){
		
		System.out.println(page+"-----------"+rows);
		
		System.out.println(user);
		PageHelper.startPage(page,rows);
		List<User> list = userService.queryUserByNumberAndUsernameAndStatus(user);
		PageInfo pageinfo = new PageInfo(list);
		
		list.forEach((i)->System.out.print(i));
		
		String listString = JSON.toJSONString(list);
		String json ="{\"total\":"+pageinfo.getTotal()+",\"rows\":"+listString+"}";
		
		return json;
		
	}
	
	
	
	

}
