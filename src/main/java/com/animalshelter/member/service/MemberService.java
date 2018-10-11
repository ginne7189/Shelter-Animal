package com.animalshelter.member.service;

import java.util.List;

import com.animalshelter.member.model.MemberDetailDto;
import com.animalshelter.member.model.MemberDto;

public interface MemberService {

	int register(MemberDto memberDto);
	int registerConfirm(String valid);
	MemberDto login(String email, String pass);
	MemberDto registerComplete(String email);
	
	MemberDetailDto getUser(String email);
	int modify(MemberDetailDto memberDetailDto);
	int delete(String email);
	
	List<MemberDetailDto> UserList(String key, String word);
	
	int isRegistered(String email);
	MemberDto getLoginInfo(String email);
}
