package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.model.Enquiry;
import com.example.demo.sevices.MailService;

@Controller
@RequestMapping("enquiry")
public class EnquiryController {
	
	@Autowired
	private MailService mailService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap)
	{
		modelMap.put("enquiry", new Enquiry());
		return "index";
	}
	
	@RequestMapping(value = "send", method=RequestMethod.POST)
	public String send(@ModelAttribute("enquiry") Enquiry enquiry, ModelMap modelMap)
	{
		
		try {
			String content = "Name: " + enquiry.getName();
			content += "<br>Phone: " + enquiry.getPhone();
			content += "<br>Email: " + enquiry.getEmail();
			content += "<br>Query: " + enquiry.getQuery();
			
			mailService.send(enquiry.getEmail(), "techblog93@gmail.com", "User enquiry",  content);
			modelMap.put("msg", "Your Query Sent Successfully!");
			
		} catch (Exception e) {
			modelMap.put("errors", e.getMessage());
		}
		return "index";
	}

}
