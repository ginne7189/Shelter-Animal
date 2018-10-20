package com.animalshelter.admin.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.animalshelter.admin.service.AdminService;
import com.animalshelter.member.model.MemberDto;
import com.animalshelter.member.service.MemberService;

import net.nipa0711.java.util.SMTPMailSender;


@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "sendEmail.animal", method = RequestMethod.GET)
	public String emailPage() {
		return "admin/sendEmail";
	}
	
	@RequestMapping(value = "sendEmail.animal", method = RequestMethod.POST)
	public String sendEmail(@RequestParam("receiver") String receiver, @RequestParam("title") String title, @RequestParam("content") String content) {
		
		List<String> emailList = new ArrayList<String>();
		if(receiver.equals("5000")) {
			emailList = adminService.getAllEmail();
		}else {
			emailList = adminService.getRelatedEmail(receiver);
		}
		
		for (String email : emailList) {
			System.out.println(email);
			
			MemberDto memberDto = null;
			memberDto = memberService.getMemberInfo(email);
						
			String from = "animalshelter@nipa0711.net";
			String fromName = "AnimalShelter";

			HashMap<String, String> map = new HashMap<String, String>();
			map.put("email", memberDto.getEmail());
			map.put("name", memberDto.getName());

			SMTPMailSender smtp = new SMTPMailSender(title, content, from, fromName, map);
			smtp.start();
		}
		System.out.println("전송완료!!");
		return "admin/sendOk";
	}
	
	@RequestMapping(value = "test.animal", method = RequestMethod.GET)
	public String test() {
		return "common/header";
	}
}
