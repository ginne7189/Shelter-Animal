package com.shelter.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.shelter.test.model.TestDto;
import com.shelter.test.service.TestService;

@Controller

public class TestController {
	
	@Autowired
	private TestService testService;
	
	
	
	@RequestMapping("/user/write.shelter")
	public ModelAndView WriteList(TestDto testDto) {
		ModelAndView mav = new ModelAndView();
		System.out.println("왔니?");
		testDto= testService.zipSearch(testDto);
		mav.setViewName("list");
		return mav;
	}
}
