package com.animalshelter.board.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animalshelter.board.dao.VboardDao;
import com.animalshelter.board.model.VboardDto;
@Service
public class VboardServiceImpl implements VboardService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public VboardDto viewArticle() {
		return sqlSession.getMapper(VboardDao.class).viewArticle();
	}

}
