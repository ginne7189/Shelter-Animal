package com.animalshelter.member.service;

import java.util.*;

import org.springframework.stereotype.Service;

import com.animalshelter.member.dao.MemberDao;
import com.animalshelter.member.model.MemberDetailDto;
import com.animalshelter.member.model.MemberDto;

@Service
public class MemberServiceImpl implements MemberService {

	private MemberDao memberDao;
	
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	@Override
	public int register(MemberDto memberDto) {
		return memberDao.register(memberDto);
	}

	@Override
	public MemberDto login(String email, String pass) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("userid", email);
		map.put("userpwd", pass);
		return memberDao.login(map);
	}

	@Override
	public MemberDetailDto getUser(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int modify(MemberDetailDto memberDetailDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String email) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<MemberDetailDto> UserList(String key, String word) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDto registerComplete(String email) {
		return memberDao.registerComplete(email);
	}

	@Override
	public int registerConfirm(String valid) {
		return memberDao.registerConfirm(valid);
	}

	@Override
	public int isRegistered(String email) {
		return memberDao.isRegistered(email);
	}

	@Override
	public MemberDto getLoginInfo(String email) {		
		return memberDao.getLoginInfo(email);
	}


}
