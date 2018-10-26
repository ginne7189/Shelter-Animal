package com.animalshelter.donation;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.animalshelter.member.service.MemberService;

@Controller
public class DonationController {
	
	@Autowired
	private donationService donationService;
	
	@RequestMapping(value = "/donation.animal", method = RequestMethod.GET)
	public String donation() {
		return "pay/naverform";
	}

	@RequestMapping(value = "payment.animal", method = RequestMethod.GET)
	public String donation(@RequestParam Map<String,String> map, @RequestParam String resultCode,
			HttpServletRequest request, HttpServletResponse response) {
		String path = "";
		if (resultCode.equals("Success")) {
			// 성공시 DB작업 등
			donationService.ddonation(map);
			request.setAttribute("money",map.get("money"));
			path = "pay/payOk";
			System.out.println("결제 성공!!");
		} else {
			System.out.println("결제 실패!");

			// 실패시 DB작업 등
			path = "pay/payFail";
		}

		return path;
	}
	
	@RequestMapping(value = "/donationReg.animal", method = RequestMethod.GET)
	public String donationReg() {
		return "donation/donationReg";
	}
}
