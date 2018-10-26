package com.animalshelter.donation;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animalshelter.member.dao.MemberDao;
@Service
public class donationServiceImpl implements donationService{
	@Autowired
	private SqlSession sqlSession;
	@Override
	public void ddonation(Map<String, String> map) {
		sqlSession.getMapper(DonationDao.class).ddonation(map);
		
	}

}
