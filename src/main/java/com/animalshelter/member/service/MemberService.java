package com.animalshelter.member.service;

import com.animalshelter.member.model.MemberDto;

public interface MemberService {

	int register(MemberDto memberDto);
	int registerConfirm(String valid);
	//MemberDto login(String email, String pass);
	MemberDto registerComplete(String email);	
	//MemberDetailDto getUser(String email);
	int isRegistered(String email);
	MemberDto getLoginInfo(String email);
	MemberDto getMemberInfo(String email);
}
