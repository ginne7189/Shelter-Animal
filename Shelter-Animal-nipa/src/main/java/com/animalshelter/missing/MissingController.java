package com.animalshelter.missing;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MissingController {
	@RequestMapping(value = "/missingDetail.animal", method = RequestMethod.GET)
	public String missingDetail() {
		return "missing/missingDetail";
	}
	@RequestMapping(value = "/missingReg.animal", method = RequestMethod.GET)
	public String missingReg() {
		return "missing/missingReg";
	}
}
