package com.animalshelter.member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.animalshelter.member.model.MemberDto;
import com.animalshelter.member.service.MemberService;

import net.nipa0711.java.util.SMTPMailSender;
import net.nipa0711.java.util.Security;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "/infolist.animal", method = RequestMethod.GET)
	public String info(HttpSession session,@RequestParam Map<String, String> map,HttpServletRequest request) {
		String email=(String) session.getAttribute("email");
		map.put("email", email);
		MemberDto memberDto=memberService.getInfo(map);
		request.setAttribute("info", memberDto);
		return "register/register_basic";
	}

	@RequestMapping(value = "/infolist.animal", method = RequestMethod.POST)
	public String info(HttpSession session,@RequestParam Map<String, String> map) {
		String email=(String) session.getAttribute("email");
		map.put("email", email);
		MemberDto memberDto=memberService.updateInfo(map);
		return "register/registertemp";
	}
	@RequestMapping(value = "/register.animal", method = RequestMethod.GET)
	public String register() {
		return "register/register_basic";
	}

	@RequestMapping(value = "/register.animal", method = RequestMethod.POST)
	public String register(MemberDto memberDto) {
		if (memberDto != null) {
			// salt값 생성
			Security security = new Security();
			String salt = security.generateSalt(); // salt

			// 평문을 salt를 이용한 단방향된(sha-256) 암호로 바꾸기
			String hashPwd = security.getHash(memberDto.getPwd(), salt); // 64자리 반환 SHA-256
			memberDto.setPwd(hashPwd);
			memberDto.setSalt(salt);

			int cnt = memberService.register(memberDto);
			if (cnt != 0) {
				//////////////////////// send email
				String subject = memberDto.getName() + "님, Animore 에 가입하신걸 축하드립니다.";
				String contents = "가입을 하신 적이 없으시다면, master@nipa0711.net 으로 문의해주세요.<br>";
				contents += "본 이메일은 발신전용 이메일입니다.<br>";
				String secretCode = security.getHash(memberDto.getEmail() + memberDto.getName() + memberDto.getTel(),
						salt);
				contents += "<a href=\"http://192.168.14.12/animalshelter/register_complete.animal?email="
						+ memberDto.getEmail() + "&secretCode=" + secretCode + "\">인증하기</a>";
				String from = "animore@nipa0711.net";
				String fromName = "Animore";

				HashMap<String, String> map = new HashMap<String, String>();
				map.put("email", memberDto.getEmail());
				map.put("name", memberDto.getName());

				SMTPMailSender smtp = new SMTPMailSender(subject, contents, from, fromName, map);
				smtp.start();
			} else {
				return "/register/registerfail";
			}
		}

		return "register/registertemp";
	}

	@ResponseBody
	@RequestMapping(value = "/emailChk.animal", method = RequestMethod.GET)
	public String emailChk(@RequestParam("email") String email) {
		int cnt = memberService.isRegistered(email);
		String order = "nope";
		if (cnt == 0) {
			order = "ok";
		}
		return order;
	}

	@RequestMapping(value = "/login.animal", method = RequestMethod.GET)
	public String login() {
		return "login/login";
	}

	@RequestMapping(value = "/login.animal", method = RequestMethod.POST)
	public String login(@RequestParam("email") String email, @RequestParam("pwd") String pwd,
			HttpServletRequest request, HttpSession session) {
		int cnt = memberService.isRegistered(email);
		if (cnt == 0) {
			// 존재하지 않는 회원입니다.
			request.setAttribute("str", "존재하지 않는 회원입니다.");
		} else {
			MemberDto memberDto = null;
			memberDto = memberService.getLoginInfo(email);

			if (memberDto.getValid().equals("O")) {
				String salt = memberDto.getSalt();
				String hashPwd = memberDto.getPwd();

				Security security = new Security();
				String newHashPwd = security.getHash(pwd, salt);
				if (hashPwd.equals(newHashPwd)) {
					// 로그인 성공
					memberDto = memberService.getMemberInfo(email);
					session.setAttribute("user", memberDto.getName());
					session.setAttribute("email", memberDto.getEmail());
					session.setAttribute("usercode", memberDto.getUsercode());
					return "../../index";
				} else {
					// 아이디 또는 비밀번호를 확인해주세요.
					request.setAttribute("str", "아이디 또는 비밀번호를 확인해주세요.");
				}
			} else {
				// 이메일 인증을 진행하지 않으셨습니다.
				// 전송된 이메일을 확인해주세요.
				return "login/validationFail";
			}
		}

		return "login/login";
	}

	@RequestMapping(value = "/register_complete.animal", method = RequestMethod.GET)
	public String register_complete(@RequestParam("email") String userEmail,
			@RequestParam("secretCode") String userSecretCode) {
		Security security = new Security();
		MemberDto memberDto = null;
		memberDto = memberService.registerComplete(userEmail);

		if (memberDto != null) {
			String secretCodeChk = security.getHash(memberDto.getEmail() + memberDto.getName() + memberDto.getTel(),
					memberDto.getSalt());
			if (secretCodeChk.equals(userSecretCode)) {
				// 가입 승인
				int cnt = memberService.registerConfirm("O");
				if (cnt != 0) {
					return "/register/registerok";
				}
			}
		}
		return "register/notvalid";
	}

	@RequestMapping(value = "/logout.animal", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		// 기존의 세션 데이터를 모두 삭제
		session.invalidate();
		return "../../index";
	}

	@RequestMapping(value = "/pwdFind.animal", method = RequestMethod.GET)
	public String pwdFind() {
		return "login/pwdFind";
	}

	@RequestMapping(value = "/pwdRequest.animal", method = RequestMethod.GET)
	public String requestSetPwd(@RequestParam("email") String userEmail, MemberDto memberDto) {
		int cnt = memberService.isResetReady(userEmail);

		if (cnt == 1) {
			return "login/validationFail";
		}

		memberDto = memberService.getMemberInfo(userEmail);
		Security security = new Security();
		String secretCode = security.generateSalt();
		Map<String, String> map = new HashMap<String, String>();
		map.put("userEmail", userEmail);
		map.put("secretCode", secretCode);
		cnt = memberService.pwdReset(map);

		if (cnt == 1) {
			String subject = memberDto.getName() + "님, 비밀번호 변경 안내";
			String contents = "아래의 링크를 눌러서, 비밀번호를 변경해주세요.<br>";
			contents += "본 이메일은 발신전용 이메일입니다.<br>";
			contents += "<a href=\"http://192.168.14.12/animalshelter/pwdReset.animal?secretCode=" + secretCode
					+ "\">비밀번호 변경하기</a>";
			String from = "animalshelter@nipa0711.net";
			String fromName = "AnimalShelter";

			HashMap<String, String> mail = new HashMap<String, String>();
			mail.put("email", memberDto.getEmail());
			mail.put("name", memberDto.getName());

			SMTPMailSender smtp = new SMTPMailSender(subject, contents, from, fromName, mail);
			smtp.start();
		}

		return "login/pwdResetNotice";
	}

	@RequestMapping(value = "/pwdReset.animal", method = RequestMethod.GET)
	public String pwdReset(@RequestParam("secretCode") String secretCode, HttpServletRequest request) {
		String email = memberService.doReset(secretCode);
		request.setAttribute("email", email);
		return "login/pwdReset";
	}

	@RequestMapping(value = "/pwdReset.animal", method = RequestMethod.POST)
	public String pwdReset(@RequestParam("pwd") String pwd, @RequestParam("email") String email) {
		Security security = new Security();
		String salt = security.generateSalt();
		String hashPwd = security.getHash(pwd, salt); // 64자리 반환 SHA-256

		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("pwd", hashPwd);
		map.put("salt", salt);

		int cnt = memberService.resetPwd(map);

		if (cnt == 1) {
			memberService.afterReset(email);
		}

		return "login/login";
	}
}
