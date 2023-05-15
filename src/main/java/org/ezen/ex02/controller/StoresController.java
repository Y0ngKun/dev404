package org.ezen.ex02.controller;

import javax.servlet.ServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/stores")
public class StoresController {
	
	@GetMapping("/stores")
	public String StoreMain(Model model, ServletRequest servletRequest) {
		return "stores/stores";
	}

}
