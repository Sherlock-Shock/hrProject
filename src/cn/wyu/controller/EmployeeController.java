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
import cn.wyu.pojo.Employee;
import cn.wyu.pojo.Job;
import cn.wyu.pojo.User;
import cn.wyu.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;
	
	
	@ResponseBody
	@RequestMapping(value="/queryDeptName",produces= {"application/text;charset=utf-8"})
	public String queryDeptName() {
		
		List<Dept> list = employeeService.queryDeptIdAndName();
		System.out.println("lailiao");
		list.forEach((i)->System.out.print(i));
		
		return JSON.toJSONString(list);
		
	}
	
	@ResponseBody
	@RequestMapping(value="/queryDeptNameById",produces= {"application/text;charset=utf-8"})
	public String queryDeptNameById(int id) {
		
		String deptName = employeeService.queryDeptNameById(id);
		//System.out.println("lailiao");
		//list.forEach((i)->System.out.print(i));
		System.out.println("部门名字："+deptName);
		return deptName;
		
	}
	
	
	
	@ResponseBody
	@RequestMapping(value="/queryJobName",produces= {"application/text;charset=utf-8"})
	public String queryJobName() {
		
		List<Job> list = employeeService.queryJobIdAndName();
		System.out.println("lailiao");
		list.forEach((i)->System.out.print(i));
		
		return JSON.toJSONString(list);
		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/addEmployee")
	public String addEmployee(Employee emp) {
		
		System.out.println(emp);
		int flag = employeeService.addEmployee(emp);
		if(flag!=0) {
			System.out.println("注册成功");
		}else { 
			System.out.println("注册失败");
		}
		
		return flag+"";	
		
	}
	
	@RequestMapping(value="/SelectEmp",produces= {"application/json;charset=utf-8"})
	@ResponseBody
	public String queryEmpByPage(int page ,int rows) {		
		
		//System.out.println(page+"-----------"+rows+number+username+status);
		
		PageHelper.startPage(page,rows);
		List<Employee> list = employeeService.queryEmp();
		PageInfo pageinfo = new PageInfo(list);
		
		
		System.out.println(pageinfo.getTotal());
		String listString = JSON.toJSONString(list);
		String json ="{\"total\":"+pageinfo.getTotal()+",\"rows\":"+listString+"}";
		return json;
	}
	
	@ResponseBody
	@RequestMapping(value="/deleteEmp",produces= {"application/text;charset=utf-8"})
	public String deleteEmp(int id ) {
		
		
	
		int flag = employeeService.deleteEmpById(id);
		String info ="删除失败";
		if(flag>0) {
			info="删除成功";
			return info;
		}else {
			return info;
		}
		
	}
	
	@ResponseBody
	@RequestMapping("/updateEmp")
	public String updateEmp(Employee emp) {
		
		System.out.println("员工修该：");
		System.out.println(emp);
		int flag = employeeService.updateEmpById(emp);
		String info ="更新失败";
		if(flag>0) {
			info="更新成功";
			return "1";
		}else {
			return "";
		}
		
	}
	
}
