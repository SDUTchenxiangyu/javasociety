package com.sdut.jgzj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sdut.jgzj.service.MatchstateService;

@Controller
public class MatchController {
	@Autowired
	private MatchstateService matchstateService;
	@RequestMapping("/test1")
	public String test1() {
		return "tests";
	}
}
