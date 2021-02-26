package com.painscript.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.painscript.dto.UserDTO;

@Controller
public class PainscriptReportController {

	@RequestMapping(path="/reports", method=RequestMethod.GET)
	String reports(@ModelAttribute("user")UserDTO user,ModelMap model) {
//		model.put("name",user.getUsername());
//		String date = new SimpleDateFormat("ddMMyyyy").format(new Date());
//		if(user.getUsername().equals("Admin") && user.getPassword().equals("1111111")) {
//			System.out.println("hello");
//			return "reports";
//		}else {
//			return "error";
//		}
		return "reports";
	}
	
	@RequestMapping(path="/login", method=RequestMethod.GET)
	String getlogin()
	{
		return "login";
	}
	
}
