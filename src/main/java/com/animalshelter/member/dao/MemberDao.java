package com.animalshelter.member.dao;

import java.util.List;
import java.util.Map;

import com.animalshelter.member.model.MemberDto;

public interface MemberDao {

	int register(MemberDto memberDto);
	int registerConfirm(String valid);
	List<String> getPwd(String email);
	MemberDto login(Map<String, String> map);
	MemberDto registerComplete(String email);
	MemberDto getInfo(Map<String,String> map);
	MemberDto updateInfo(Map<String,String> map);
	MemberDto getMember(String id);
	int modify(MemberDto memberDto);
	int delete(String email);	
	
	int isRegistered(String email);
	MemberDto getLoginInfo(String email);
	MemberDto getMemberInfo(String email);
	int pwdReset(Map<String, String> map);
	int resetPwd(Map<String, String> map);
	int afterReset(String email);
	String doReset(String secretCode);
	int isResetReady(String secretCode);
}
