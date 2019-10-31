package cn.wyu.dao;

import java.util.List;

import cn.wyu.pojo.Dept;
import cn.wyu.pojo.Employee;
import cn.wyu.pojo.Job;

public interface EmployeeMapper {

	public List<Dept> queryDeptIdAndName();
	
	public String queryDeptNameById(int id);
	
	public List<Job> queryJobIdAndName();
	
	public int addEmployee(Employee emp);
	
	public List<Employee> queryEmp();
	
	public int deleteEmpById(int id);
	
	public int updateEmpById(Employee emp);
}
