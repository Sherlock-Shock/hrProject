package cn.wyu.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.wyu.dao.DeptMapper;
import cn.wyu.pojo.Dept;
import cn.wyu.service.DeptService;

@Service("deptService")
public class DeptServiceImpl implements DeptService {

	@Autowired
	DeptMapper DeptMapper;
	
	@Override
	public int addDept(Dept dept) {
		// TODO Auto-generated method stub
		return DeptMapper.addDept(dept);
	}

	@Override
	public List<Dept> queryDept() {
		// TODO Auto-generated method stub
		return DeptMapper.queryDept();
	}

	@Override
	public int updateDeptById(Dept dept) {
		// TODO Auto-generated method stub
		return DeptMapper.updateDeptById(dept);
	}

	@Override
	public int deleteDeptById(int id) {
		// TODO Auto-generated method stub
		return DeptMapper.deleteDeptById(id);
	}

}
