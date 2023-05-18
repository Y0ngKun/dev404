package org.ezen.ex02.controller;

import javax.servlet.ServletRequest;

import org.ezen.ex02.service.StoresService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/stores")
@Log4j
@AllArgsConstructor
public class StoresController {
	
	private StoresService service;
	
	
	@GetMapping("/stores")
	public String StoreMain(Model model, ServletRequest servletRequest) {
		log.info("동네가게 진입");
		return "stores/stores";
	}

}
