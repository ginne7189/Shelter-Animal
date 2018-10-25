package com.animalshelter.member.service;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.animalshelter.member.dao.MemberDao;
import com.animalshelter.member.model.MemberDto;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int register(MemberDto memberDto) {
		return sqlSession.getMapper(MemberDao.class).register(memberDto);
	}

	/*@Override
	public MemberDto login(String email, String pass) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", email);
		map.put("userpwd", pass);
		//return memberDao.login(map);
	}*/

	@Override
	public MemberDto registerComplete(String email) {
		return sqlSession.getMapper(MemberDao.class).registerComplete(email);
	}

	@Override
	public int registerConfirm(String valid) {
		return sqlSession.getMapper(MemberDao.class).registerConfirm(valid);
	}

	@Override
	public int isRegistered(String email) {	
		return sqlSession.getMapper(MemberDao.class).isRegistered(email);
	}

	@Override
	public MemberDto getLoginInfo(String email) {		
		return sqlSession.getMapper(MemberDao.class).getLoginInfo(email);
	}

	@Override
	public MemberDto getMemberInfo(String email) {
		return sqlSession.getMapper(MemberDao.class).getMemberInfo(email);
	}

	@Override
	public int pwdReset(Map<String, String> map) {
		return sqlSession.getMapper(MemberDao.class).pwdReset(map);
	}

	@Override
	public int afterReset(String email) {
		return sqlSession.getMapper(MemberDao.class).afterReset(email);
	}

	@Override
	public String doReset(String secretCode) {
		return sqlSession.getMapper(MemberDao.class).doReset(secretCode);
	}

	@Override
	public int resetPwd(Map<String, String> map) {
		return sqlSession.getMapper(MemberDao.class).resetPwd(map);
	}

	@Override
	public MemberDto getInfo(Map<String, String> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(MemberDao.class).getInfo(map);
	}

	@Override
	public MemberDto updateInfo(Map<String, String> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(MemberDao.class).updateInfo(map);
	}
}
