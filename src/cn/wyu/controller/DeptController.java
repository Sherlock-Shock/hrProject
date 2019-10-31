package cn.wyu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.wyu.pojo.Dept;
import cn.wyu.pojo.User;
import cn.wyu.service.DeptService;

@Controller
public class DeptController {

	@Autowired
	DeptService deptservice;
	
	@ResponseBody
	@RequestMapping("/addDept")
	public String addDept(Dept dept) {
		
		int f = deptservice.addDept(dept);
		String info ="添加成功";
		if(f>0) {
			return "1";
		}else {
			info="添加失败";
			return info;
		}
	}
	
	
	@ResponseBody
	@RequestMapping(value="/queryDeptByPage",produces= {"application/json;charset=utf-8"})
	public String queryDept(int page ,int rows) {
		
		
		PageHelper.startPage(page,rows);
		List<Dept> list = deptservice.queryDept();
		PageInfo pageinfo = new PageInfo(list);
		
		list.forEach((i)->System.out.print(i));
		
		String listString = JSON.toJSONString(list);
		String json ="{\"total\":"+pageinfo.getTotal()+",\"rows\":"+listString+"}";
		return json;

	}
	
	
	@ResponseBody
	@RequestMapping("/updateDept")
	public String updateDept(Dept dept) {
		
		int flag = deptservice.updateDeptById(dept);
		String info ="更新失败";
		if(flag>0) {
			info="更新成功";
			return "1";
		}else {
			return "";
		}
		
	}
	
	@ResponseBody
	@RequestMapping("/delectDept")
	public String delectDept(int id) {
		
		return "";
	}
	
	
}
