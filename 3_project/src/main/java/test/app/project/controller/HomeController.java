package test.app.project.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping(value = "/")
	public String home() {
		return ".main";
	}
	@RequestMapping(value="/product/accommodationList")
	public String accomlist(){
		return ".product.accommodationList";
	}
}
