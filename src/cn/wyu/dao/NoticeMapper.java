package cn.wyu.dao;

import java.util.List;

import cn.wyu.pojo.Notice;

public interface NoticeMapper {
	public int addNotice(Notice notice);
	
	public List<Notice> queryNotice();
	
	public  Notice queryNoticeById(int id);

}
