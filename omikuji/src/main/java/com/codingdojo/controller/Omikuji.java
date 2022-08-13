package com.codingdojo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@SpringBootApplication
@Controller
public class Omikuji {
	
	@RequestMapping("/omikuji")
    public String form() {
		return "form.jsp";
	}
	
	@RequestMapping(value="/omikuji/show", method = RequestMethod.POST)
    public String show(
    		@RequestParam(value = "number") Integer number,
    		@RequestParam(value = "city") String city,
    		@RequestParam(value = "person") String person,
    		@RequestParam(value = "hobby") String hobby,
    		@RequestParam(value = "type") String type,
    		@RequestParam(value = "somethingNice") String somethingNice,HttpSession session
    		) {
		
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("type", type);
		session.setAttribute("somethingNice", somethingNice);
		
		
		
		return "redirect:/omikuji/display";
	}
	
	@RequestMapping("/omikuji/display")
    public String Display(Model model, HttpSession session) {
		model.addAttribute("number",session.getAttribute("number"));
		model.addAttribute("city",session.getAttribute("city"));
		model.addAttribute("person",session.getAttribute("person"));
		model.addAttribute("hobby",session.getAttribute("hobby"));
		model.addAttribute("type",session.getAttribute("type"));
		model.addAttribute("somethingNice",session.getAttribute("somethingNice"));
		
		return "display.jsp";
	}


}
