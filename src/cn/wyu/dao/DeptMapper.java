package cn.wyu.dao;

import java.util.List;

import cn.wyu.pojo.Dept;

public interface DeptMapper {
	
  public int addDept(Dept dept);
  
  public List<Dept> queryDept();
  
  public int updateDeptById(Dept dept);
  
  public int deleteDeptById(int id);
  
}
