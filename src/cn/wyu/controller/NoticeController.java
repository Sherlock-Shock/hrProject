package cn.wyu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.wyu.pojo.Notice;
import cn.wyu.pojo.User;
import cn.wyu.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired
	NoticeService noticeService;
	
	@ResponseBody
	@RequestMapping("/addNotice")
	public String addNotice(Notice notice) {
		
		System.out.println(notice);
		int flag = noticeService.addNotice(notice);
		
		if(flag!=0) {
			System.out.println("添加公告成功");
		}else { 
			System.out.println("添加公告失败");
		}
		
		return flag+"";
	}
	
	@RequestMapping(value="/SelectNotice",produces= {"application/json;charset=utf-8"})
	@ResponseBody
	public String queryNoticeByPage(int page ,int rows) {		
		
		//System.out.println(page+"-----------"+rows+number+username+status);
		
		PageHelper.startPage(page,rows);
		List<Notice> list = noticeService.queryNotice();
		PageInfo pageinfo = new PageInfo(list);
		
		
		System.out.println(pageinfo.getTotal());
		String listString = JSON.toJSONString(list);
		String json ="{\"total\":"+pageinfo.getTotal()+",\"rows\":"+listString+"}";
		return json;
	}
	
	@RequestMapping(value="/queryNotice",produces= {"application/json;charset=utf-8"})
	public String queryNotice(int id,Model model) {		
		
		//System.out.println(page+"-----------"+rows+number+username+status);
		System.out.println("jinlailiao"+id);
		Notice notice = noticeService.queryNoticeById(id);
		String noticeString = JSON.toJSONString(notice);
		//String json ="{\"total\":"+pageinfo.getTotal()+",\"rows\":"+listString+"}";
		model.addAttribute("notice",notice);
		System.out.println(noticeString);
		return "Notice";
	}
	
}
