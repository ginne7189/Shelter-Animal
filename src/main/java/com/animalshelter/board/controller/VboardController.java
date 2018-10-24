package com.animalshelter.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import com.animalshelter.board.model.VboardDto;
import com.animalshelter.board.service.VboardService;

@Controller
@RequestMapping("/volunteer")
public class VboardController {

	@Autowired
	private VboardService vboardService;
	
	@RequestMapping(value="/vDetailView.animal", method=RequestMethod.GET)
	public String view(ModelMap model) {
		VboardDto vboardDto = vboardService.viewArticle();
		model.addAttribute("vboardDto", vboardDto);
		return "volunteer/volunteerDetail";
	}
}
