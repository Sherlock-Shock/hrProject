package cn.wyu.service;

import java.util.List;

import cn.wyu.pojo.Dept;
import cn.wyu.pojo.Employee;
import cn.wyu.pojo.Job;

public interface EmployeeService {
	
	public List<Dept> queryDeptIdAndName();
	
	public List<Job> queryJobIdAndName();
	
	public int addEmployee(Employee emp);
	
	public List<Employee> queryEmp();
	
	public int deleteEmpById(int id);
	
	public String queryDeptNameById(int id);
	
	public int updateEmpById(Employee emp);
	
}
