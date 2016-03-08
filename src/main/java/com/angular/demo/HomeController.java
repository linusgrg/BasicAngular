package com.angular.demo;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value="/nextpage")
	public String nextPage(){
		return "insertpage";
		
	}
	
	@RequestMapping(value="/page3")
	public String nextPage3(){
		return "page3";
		
	}
	
	@RequestMapping(value="/page4")
	public String nextPage4(){
		return "page4";
		
	}
	
	@RequestMapping(value="/page5")
	public String nextPage5(){
		return "page5";
		
	}
	
	@RequestMapping(value="/page6")
	public String nextPage6(){
		return "page6";
		
	}
	
	@RequestMapping(value="/event")
	public String event(){
		return "event";
		
	}
	
	@RequestMapping(value="/filter")
	public String filter(){
		return "filter";
		
	}
	
	@RequestMapping(value="/search")
	public String search(){
		return "search";
		
	}
	
	@RequestMapping(value="/service")
	public String service(){
		return "service";
		
	}
	@RequestMapping(value="/customedirective")
	public String customedirective(){
		return "customedirective";
		
	}
}
