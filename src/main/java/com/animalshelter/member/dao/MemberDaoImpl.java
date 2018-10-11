package com.animalshelter.member.dao;

import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.animalshelter.config.Configuration;
import com.animalshelter.member.model.MemberDetailDto;
import com.animalshelter.member.model.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao {

	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public int register(MemberDto memberDto) {
		int cnt = 1;
		SqlSession sqlSession = Configuration.getSqlSession();
		try {
			cnt = sqlSession.insert("com.animalhouse.member.dao.MemberDao.register", memberDto);
			sqlSession.commit();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}

	@Override
	public List<String> getPwd(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDto login(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDetailDto getMember(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int modify(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String email) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberDto registerComplete(String email) {
		MemberDto memberDto = null;
		SqlSession sqlSession = Configuration.getSqlSession();
		try {
			memberDto = sqlSession.selectOne("com.animalhouse.member.dao.MemberDao.registerCheck", email);
		} finally {
			sqlSession.close();
		}
		return memberDto;
	}

	@Override
	public int registerConfirm(String valid) {
		int cnt = 1;
		SqlSession sqlSession = Configuration.getSqlSession();
		try {
			cnt = sqlSession.insert("com.animalhouse.member.dao.MemberDao.registerConfirm", valid);
			sqlSession.commit();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}

	@Override
	public int isRegistered(String email) {
		int cnt = 0;
		SqlSession sqlSession = Configuration.getSqlSession();
		try {
			cnt = sqlSession.selectOne("com.animalhouse.member.dao.MemberDao.isRegistered", email);
			sqlSession.commit();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}

	@Override
	public MemberDto getLoginInfo(String email) {
		MemberDto memberDto = null;
		SqlSession sqlSession = Configuration.getSqlSession();
		try {
			memberDto = sqlSession.selectOne("com.animalhouse.member.dao.MemberDao.getLoginInfo", email);
		} finally {
			sqlSession.close();
		}
		return memberDto;
	}

}
