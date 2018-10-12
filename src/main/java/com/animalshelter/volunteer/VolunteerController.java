package com.animalshelter.volunteer;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class VolunteerController {
	@RequestMapping(value = "/volunteerDetail.animal", method = RequestMethod.GET)
	public String volunteerDetail() {
		return "volunteer/volunteerDetail";
	}
	
	@RequestMapping(value = "/volunteerReg.animal", method = RequestMethod.GET)
	public String volunteerReg() {
		return "volunteer/volunteerReg";
	}
}
