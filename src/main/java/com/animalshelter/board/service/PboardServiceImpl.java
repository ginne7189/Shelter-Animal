package com.animalshelter.board.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animalshelter.board.dao.PboardDao;
import com.animalshelter.board.model.MissingBoardDto;
import com.animalshelter.board.model.PboardDto;
import com.animalshelter.common.dao.CommonDao;

@Service
public class PboardServiceImpl implements PboardService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int writeArticle(PboardDto pboardDto) {
		int seq = sqlSession.getMapper(CommonDao.class).getNextSeq();
		pboardDto.setSeq(seq);
		return sqlSession.getMapper(PboardDao.class).writeArticle(pboardDto) == 0 ? 0:seq;
	}
	@Override
	public int mwriteArticle(MissingBoardDto mboardDto) {
		int seq = sqlSession.getMapper(CommonDao.class).getNextSeq();
		mboardDto.setSeq(seq);
		return sqlSession.getMapper(PboardDao.class).mwriteArticle(mboardDto) == 0 ? 0:seq;
	}
	@Override
	public PboardDto viewArticle(int seq) {
		return sqlSession.getMapper(PboardDao.class).viewArticle(seq);
	}

//	@Override
//	public PboardDto viewArticle() {
//		
//		return sqlSession.getMapper(PboardDao.class).viewArticle();
//	}

	
}
