package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.AdminTable;
import com.example.demo.model.BlogTable;

@Controller
public class AdminTableController {
	
	@Autowired
	DashbordController controller; 
	
	@RequestMapping(value="adminLogin",method=RequestMethod.GET)
	public String adminLogin() {
		return "adminLogin";
	}
	@RequestMapping(value="adminloginurl",method=RequestMethod.POST)
	public String saveSingleBlog(AdminTable admin) {
		
		if(admin.getAdminUsername().equals("admin") && admin.getAdminPassword().equals("admin")) {
			System.out.println(admin.getAdminPassword());
			return "redirect:/adminpage";
		}
		return "adminLogin";

	}
}
