package com.animalshelter.board.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animalshelter.board.dao.ReplyDao;
import com.animalshelter.board.model.ReplyDto;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertReply(ReplyDto replyDto) {
		return sqlSession.getMapper(ReplyDao.class).insertReply(replyDto);
	}

	@Override
	public int updateReply(ReplyDto replyDto) {
		return sqlSession.getMapper(ReplyDao.class).updateReply(replyDto);
	}

	@Override
	public int deleteReply(ReplyDto replyDto) {
		return sqlSession.getMapper(ReplyDao.class).deleteReply(replyDto);
	}

	@Override
	public List<ReplyDto> showReply(ReplyDto replyDto) {
		return sqlSession.getMapper(ReplyDao.class).showReply(replyDto);
	}

}
