package com.animalshelter.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/reply")
public class ReplyController {

	@RequestMapping("/register.animal")
	public String reply() {
		return "parcel/pview";
	}
}
