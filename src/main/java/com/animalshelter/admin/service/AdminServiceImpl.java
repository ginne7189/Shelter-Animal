package com.animalshelter.admin.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animalshelter.admin.dao.AdminDao;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<String> getAllEmail() {
		return sqlSession.getMapper(AdminDao.class).getAllEmail();
	}

	@Override
	public List<String> getRelatedEmail(String usercode) {
		return sqlSession.getMapper(AdminDao.class).getRelatedEmail(usercode);
	}

}
