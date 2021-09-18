package com.example.demo.controller;

import java.util.List;

import javax.persistence.EntityNotFoundException;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.BlogTable;
import com.example.demo.repository.BlogTableRepository;

@Controller
public class BlogTableController {

	@Autowired
	BlogTableRepository blogTableRepository;
	
//	@RequestMapping(value="regi",method=RequestMethod.GET)
//	public String regi() {
//		return "addSingleBlog";
//	}
	
	@RequestMapping(value="home",method=RequestMethod.GET)
	public ModelAndView blogpage(){
		ModelAndView mv=null;
		try {	
			List<BlogTable> blogList=blogTableRepository.findAll();

			if(!blogList.isEmpty())

			{
				mv=new ModelAndView("ViewAll","listKey",blogList);
				System.out.println("Object is there");
			}

		}
		catch(EntityNotFoundException e)
		{
			mv= new ModelAndView("ViewAll","ek","Some problem in returning list");

		}
		return mv;
	}
	
	@RequestMapping(value="addblog",method=RequestMethod.POST)
	public ModelAndView saveSingleBlog(BlogTable blog) {
		ModelAndView mv=null;
		if(blogTableRepository.save(blog)!=null) {
			mv= new ModelAndView("addSingleBlog","ek","Blog Added Succesfully");
			return mv;
		}
			//return new ModelAndView("blogAddSuccess");	
		return null;
	}
	
	@RequestMapping(value="singleblog/{slug}",method=RequestMethod.GET)
	public ModelAndView singleblog(@PathVariable String slug) {
		BlogTable singleBlog=blogTableRepository.findByBlogSlug(slug);
		return new ModelAndView("showSingleBlog","singleBlogkey",singleBlog);	
	}
}
