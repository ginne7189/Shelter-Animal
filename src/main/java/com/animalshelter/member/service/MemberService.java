package com.animalshelter.member.service;

import java.util.Map;

import org.springframework.web.bind.annotation.RequestParam;

import com.animalshelter.member.model.MemberDto;

public interface MemberService {

	int register(MemberDto memberDto);
	int registerConfirm(String valid);
	MemberDto updateInfo(Map<String, String> map);
	MemberDto getInfo(Map<String, String> map);
	//MemberDto login(String email, String pass);
	MemberDto registerComplete(String email);	
	//MemberDetailDto getUser(String email);
	int isRegistered(String email);
	MemberDto getLoginInfo(String email);
	MemberDto getMemberInfo(String email);
	int pwdReset(Map<String, String> map);
	int resetPwd(Map<String, String> map);
	int afterReset(String email);
	String doReset(String secretCode);
	
}
