package com.animalshelter.donation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DonationController {
	@RequestMapping(value = "/donation.animal", method = RequestMethod.GET)
	public String donation() {
		return "donation/donationDetail";
	}
	
	@RequestMapping(value = "/donationReg.animal", method = RequestMethod.GET)
	public String donationReg() {
		return "donation/donationReg";
	}
}
