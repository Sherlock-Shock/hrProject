package cn.wyu.service;

import java.util.List;

import cn.wyu.pojo.Notice;

public interface NoticeService {
	public int addNotice(Notice notice);
	public List<Notice> queryNotice();
	public  Notice queryNoticeById(int id);
}
