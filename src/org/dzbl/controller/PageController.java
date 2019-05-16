package org.dzbl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/page")
public class PageController {
	
	@RequestMapping("/loginh")
	public String loginh(){
		return "/loginh";
	}
	
	@RequestMapping("/cms/{page}")
	public String cms(@PathVariable("page") String page){
		return "/cms/" + page;
	}
	
	@RequestMapping("/index")
	public String index(){
		return "cms/hospitalIndex";
	}
}
