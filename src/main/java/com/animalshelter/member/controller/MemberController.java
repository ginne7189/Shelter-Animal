package com.animalshelter.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.animalshelter.member.service.MemberService;

@Controller
public class MemberController {

	private MemberService memberService;

	@RequestMapping(value = "register.animal", method = RequestMethod.GET)
	public String register() {
		return "register/register_basic";
	}

	@RequestMapping(value = "/login.animal", method = RequestMethod.GET)
	public String login() {
		return "login/login";
	}

	@RequestMapping(value = "abandoned.animal", method = RequestMethod.GET)
	public String showAbandonedAnimal() {
		return "login/login";
	}
	
	@RequestMapping(value = "animalDetail.animal", method = RequestMethod.GET)
	public String showAnimalDetail() {
		return "abandoned/animalDetail";
	}
}
