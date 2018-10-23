package com.animalshelter.admin.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.animalshelter.admin.service.AdminService;
import com.animalshelter.member.model.MemberDto;
import com.animalshelter.member.service.MemberService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
	public String sendEmail(@RequestParam("receiver") String receiver, @RequestParam("title") String title,
			@RequestParam("content") String content) {

		List<String> emailList = new ArrayList<String>();
		if (receiver.equals("5000")) {
			emailList = adminService.getAllEmail();
		} else {
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

	@Autowired
	private ServletContext servletContext;

	@RequestMapping(value = "photoUpload.animal", method = RequestMethod.POST)
	public void test(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/plain; charset=UTF-8");
		String uploadPath = servletContext.getRealPath("/upload/img");
		int size = 10 * 1024 * 1024; // 업로드 사이즈 제한 10M 이하
		File dir = new File(uploadPath);
		if (!dir.exists()) {
			dir.mkdirs();
		}

		String fileName = ""; // 파일명

		try {
			// 파일업로드 및 업로드 후 파일명 가져옴
			MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8",
					new DefaultFileRenamePolicy());
			Enumeration files = multi.getFileNames();
			String file = (String) files.nextElement();
			fileName = multi.getFilesystemName(file);

			PrintWriter out = response.getWriter();
			// 업로드된 경로와 파일명을 통해 이미지의 경로를 생성
			String imgPath = "/img/" + fileName;
			// 생성된 경로를 JSON 형식으로 보내주기 위한 설정
			JSONObject jobj = new JSONObject();
			jobj.put("url", imgPath);

			response.setContentType("application/json"); // 데이터 타입을 json으로 설정하기 위한 세팅
			out.print(jobj.toString());

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
