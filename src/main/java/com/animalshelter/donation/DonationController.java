package com.animalshelter.donation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class DonationController {

	@RequestMapping(value = "/donation.animal", method = RequestMethod.GET)
	public String donation() {
		return "pay/naverform";
	}

	@RequestMapping(value = "payment.animal", method = RequestMethod.GET)
	public String donation(@RequestParam String money, @RequestParam String resultCode, @RequestParam String paymentId,
			HttpServletRequest request, HttpServletResponse response) {

		String path = "";
		if (resultCode.equals("Success")) {
			// 성공시 DB작업 등

			request.setAttribute("money", money);
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
