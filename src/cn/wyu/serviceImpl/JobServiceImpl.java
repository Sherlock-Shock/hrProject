package cn.wyu.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.wyu.dao.JobMapper;
import cn.wyu.pojo.Job;
import cn.wyu.service.JobService;
@Service("jobService")
public class JobServiceImpl implements JobService {

	@Autowired
	JobMapper JobMapper;
	
	@Override
	public int addJob(Job job) {
		// TODO Auto-generated method stub
		return JobMapper.addJob(job);
	}

	@Override
	public List<Job> queryJob() {
		// TODO Auto-generated method stub
		return JobMapper.queryJob();
	}

	@Override
	public int updateJobById(Job job) {
		// TODO Auto-generated method stub
		return JobMapper.updateJobById(job);
	}

	@Override
	public int deleteJobById(int id) {
		// TODO Auto-generated method stub
		return JobMapper.deleteJobById(id);
	}

}
