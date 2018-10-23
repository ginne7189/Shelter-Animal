package com.shelter.test.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shelter.test.dao.TestDao;
import com.shelter.test.model.TestDto;

@Service
public class TestServiceImpl implements TestService{
	@Autowired
	private SqlSession sqlSession;
	@Override
	public TestDto zipSearch(TestDto testDto) {
		return sqlSession.getMapper(TestDao.class).zipSearch(testDto);
	}


}
