package org.ezen.ex02.controller;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.ezen.ex02.domain.StoresVO;
import org.ezen.ex02.service.StoresImagesDao;
import org.ezen.ex02.service.StoresService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/stores")
@Log4j
@AllArgsConstructor
public class StoresController {
	
	private StoresService service;
	private StoresImagesDao imageDao;
	
	@GetMapping("/stores")
	public String storeMain(Model model, ServletRequest servletRequest, HttpSession session, RedirectAttributes rttr) {
		
		String username = (String)session.getAttribute("username");
		
		if(!(username==null)) {
			model.addAttribute("message","1");
//			rttr.addAttribute("message", 1);
			return "stores/stores";
		}
		else if(username == null) {
			return "stores/stores";
		}
		
		log.info("동네가게 진입");
		return "stores/stores";
	};
	
	
	@PostMapping("/stores")
	public String register(HttpServletRequest request, HttpSession session,StoresVO storesVO,String title, String content) {
		String writer = (String)session.getAttribute("username");
		log.info(writer);
		System.out.println("writer : "+writer);
		storesVO.setTitle(title);
		storesVO.setContent(content);
		storesVO.setWriter(writer);
		service.register(storesVO)	;
		return "stores/business-profiles";
	}
	
	
	@GetMapping("/business-profiles")
	public String businessProfiles(){
		return "stores/business-profiles";
	}
	
	

}
