package org.ezen.ex02.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/articles")
public class ArticlesController {
	
	@GetMapping("/new")
	public String registerPage(HttpSession session) {
		return "articles/register";
	}

}
