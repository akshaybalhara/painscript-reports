package com.painscript.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PainscriptReportController {

	@RequestMapping(path="/reports", method=RequestMethod.GET)
	String reports() {
		return "reports";
	}
	
	@RequestMapping(path="/login", method=RequestMethod.GET)
	String getlogin()
	{
		return "login";
	}
	
}
