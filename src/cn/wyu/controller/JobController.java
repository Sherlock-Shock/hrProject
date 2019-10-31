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
import cn.wyu.pojo.Job;
import cn.wyu.pojo.User;
import cn.wyu.service.JobService;

@Controller
public class JobController {
	@Autowired
	JobService jobService;
	
	
	@ResponseBody
	@RequestMapping("/addJob")
	public String addJob(Job job) {
		int flag = jobService.addJob(job);
		if(flag>0) {
			return "1";
		}else {
			return "";
		}
		
	}
	
	@ResponseBody
	@RequestMapping(value="/queryJobByPage",produces= {"application/json;charset=utf-8"})
	public String queryJob(int page ,int rows) {
		
		
		PageHelper.startPage(page,rows);
		List<Job> list = jobService.queryJob();
		PageInfo pageinfo = new PageInfo(list);
		
		list.forEach((i)->System.out.print(i));
		
		String listString = JSON.toJSONString(list);
		String json ="{\"total\":"+pageinfo.getTotal()+",\"rows\":"+listString+"}";
		return json;

	}
	
	
	@ResponseBody
	@RequestMapping("/updateJob")
	public String updateJob(Job job) {
			
		int flag = jobService.updateJobById(job);
		String info ="更新失败";
		if(flag>0) {
			info="更新成功";
			return "1";
		}else {
			return "";
		}
		
	}
	
	@ResponseBody
	@RequestMapping(value="/deleteJob",produces= {"application/text;charset=utf-8"})
	public String deleteJob(int id ) {
		
		
	
		int flag = jobService.deleteJobById(id);
		String info ="删除失败";
		if(flag>0) {
			info="删除成功";
			return info;
		}else {
			return info;
		}
		
	}
	
}
