package cn.wyu.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.wyu.dao.EmployeeMapper;
import cn.wyu.pojo.Dept;
import cn.wyu.pojo.Employee;
import cn.wyu.pojo.Job;
import cn.wyu.service.EmployeeService;
@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeMapper employeeMapper;
	
	
	@Override
	public List<Dept> queryDeptIdAndName() {
		// TODO Auto-generated method stub
		return employeeMapper.queryDeptIdAndName();
	}


	@Override
	public List<Job> queryJobIdAndName() {
		// TODO Auto-generated method stub
		return employeeMapper.queryJobIdAndName();
	}


	@Override
	public int addEmployee(Employee emp) {
		// TODO Auto-generated method stub
		return employeeMapper.addEmployee(emp);
	}


	@Override
	public List<Employee> queryEmp() {
		// TODO Auto-generated method stub
		return employeeMapper.queryEmp();
	}


	@Override
	public int deleteEmpById(int id) {
		// TODO Auto-generated method stub
		return employeeMapper.deleteEmpById(id);
	}


	@Override
	public String queryDeptNameById(int id) {
		// TODO Auto-generated method stub
		return employeeMapper.queryDeptNameById(id);
	}


	@Override
	public int updateEmpById(Employee emp) {
		// TODO Auto-generated method stub
		return employeeMapper.updateEmpById(emp);
	}
	
	

}
