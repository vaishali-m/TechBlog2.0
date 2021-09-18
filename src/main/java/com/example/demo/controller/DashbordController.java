package com.example.demo.controller;

import java.util.List;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.BlogTable;
import com.example.demo.repository.BlogTableRepository;

@Controller
public class DashbordController {
	@Autowired
	BlogTableRepository blogTableRepository;
	
	@RequestMapping(value="adminpage",method=RequestMethod.GET)
	public ModelAndView adminPageData(){
		ModelAndView mv=null;
		try {	
			List<BlogTable> blogList=blogTableRepository.findAll();

			if(!blogList.isEmpty())

			{
				mv=new ModelAndView("dashbord","listKey",blogList);
				System.out.println("Object is there");
			}

		}
		catch(EntityNotFoundException e)
		{
			mv= new ModelAndView("dashbord","ek","please enter valid userid to find");

		}
		
		return mv;
	}
	
	@RequestMapping(value="regi",method=RequestMethod.GET)
	public String regi() {
		return "addSingleBlog";
	}
	
	@RequestMapping(value="edit/{slug}",method=RequestMethod.GET)
	public ModelAndView singleblog(@PathVariable String slug) {
		BlogTable singleBlog=blogTableRepository.findByBlogSlug(slug);
		return new ModelAndView("singleBlogEdit","singleBlogkey",singleBlog);	
	}
	@RequestMapping(value="edit/singleBlogUpdate",method=RequestMethod.POST)
	public ModelAndView updateBlog(BlogTable blog) {
		ModelAndView mv=null;
		if(blogTableRepository.save(blog)!=null) {
			mv= new ModelAndView("singleBlogEdit","ek","Blog Updated Succesfully");
			//return new ModelAndView("blogUpdateSuccess");
			return mv;
		}			
		return null;

	}
	
	@RequestMapping(value="delete/{slug}",method=RequestMethod.GET)
	public ModelAndView deleteBlog(@PathVariable String slug) {
		System.out.println(slug);
		BlogTable singleBlog=blogTableRepository.findByBlogSlug(slug);
		blogTableRepository.deleteById(singleBlog.getBlogId());
		return new ModelAndView("blogDeleteSuccess");
	}

}
