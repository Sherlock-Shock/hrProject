package cn.wyu.service;

import java.util.List;

import cn.wyu.pojo.Job;

public interface JobService {

	public int addJob(Job job);
	public List<Job> queryJob();
	public int updateJobById(Job job);
	public int deleteJobById(int id);
}
