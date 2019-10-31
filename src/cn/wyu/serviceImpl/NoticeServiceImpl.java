package cn.wyu.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.wyu.dao.NoticeMapper;
import cn.wyu.pojo.Notice;
import cn.wyu.service.NoticeService;
@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	NoticeMapper noticeMapper;
	
	@Override
	public int addNotice(Notice notice) {
		// TODO Auto-generated method stub
		return noticeMapper.addNotice(notice);
	}

	@Override
	public List<Notice> queryNotice() {
		// TODO Auto-generated method stub
		return noticeMapper.queryNotice();
	}

	@Override
	public Notice queryNoticeById(int id) {
		// TODO Auto-generated method stub
		return noticeMapper.queryNoticeById(id);
	}

}
