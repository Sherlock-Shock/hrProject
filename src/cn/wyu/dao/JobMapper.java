package cn.wyu.dao;

import java.util.List;


import cn.wyu.pojo.Job;

public interface JobMapper {

	public int addJob(Job job);
	
	public List<Job> queryJob();
	
	public int updateJobById(Job job);
	
	public int deleteJobById(int id);
}
