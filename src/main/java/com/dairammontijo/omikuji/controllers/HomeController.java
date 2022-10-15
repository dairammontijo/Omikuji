package com.dairammontijo.omikuji.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String index() {
		return "omikuji.jsp";
	}
	
	@PostMapping("/viewOmikuji")
	public String view() {
		return "redirect:/showOmikuji";
	}
	
	@GetMapping("/showOmikuji")
	public String show(HttpSession session, Model model) {
		
		
		String formResults = (String) session.getAttribute("renderedOmikuji");
		System.out.println(formResults);
		model.addAttribute("formResults", formResults);
		return "viewOmikuji.jsp";
	}
		
	@PostMapping("/submitForm")
	public String submit(
			@RequestParam("number") int number,
			@RequestParam("city") String city,
			@RequestParam("personName") String personName,
			@RequestParam("profession") String profession,
			@RequestParam("livingThing") String livingThing,
			@RequestParam("textArea") String textArea,
			HttpSession session ) {
		
		String renderedOmikuji = String.format("In %s years you will live in %s with %s as your roomate doing %s for a living. The next time you see a %s, you will have good luck. Also, %s.",
				number, city, personName, profession, livingThing, textArea);
		
		session.setAttribute("renderedOmikuji", renderedOmikuji);
		System.out.println(renderedOmikuji);
		return "redirect:/showOmikuji";
	}
	
	
	
	
}
