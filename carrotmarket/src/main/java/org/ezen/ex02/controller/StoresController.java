package org.ezen.ex02.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ezen.ex02.domain.MemberVO;
import org.ezen.ex02.domain.StoresVO;
import org.ezen.ex02.service.MemberService;
import org.ezen.ex02.service.StoresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/stores")
@Log4j
public class StoresController {
	
	@Setter(onMethod_=@Autowired)
	private StoresService service;
	
	@Setter(onMethod_=@Autowired)
	private MemberService memberService;
	
	@GetMapping("/stores")
	public String storeMain(Model model, ServletRequest servletRequest, HttpSession session, RedirectAttributes rttr) {
		
		String username = (String)session.getAttribute("username");
		
		
		List<?> boardList = service.getList();
		
		
		model.addAttribute("list", boardList);
		
		
		if(!(username==null)) {
			model.addAttribute("message","1");
			return "stores/stores";
		}
		if(username == null) {
			return "stores/stores";
		}
		
		return "stores/stores";
	};
	

	
//	@PostMapping("/stores")
//	public String register(MultipartFile[] uploadFile,Model model,HttpServletRequest request, HttpSession session,StoresVO storesVO,String title, String content) {
//		String writer = (String)session.getAttribute("username");
//		log.info(writer);
//		System.out.println("writer : "+writer);
//		storesVO.setTitle(title);
//		storesVO.setContent(content);
//		storesVO.setWriter(writer);
//		service.register(storesVO)	;
//		
//		return "redirect:/stores/stores";
//	}
	
	
	
	
	@GetMapping("/business-profiles")
	public String showBizProfiles(HttpServletRequest request, HttpServletResponse response){
		
		String notice = request.getParameter("title");
        String content = request.getParameter("content");
        
        request.setAttribute("notice", notice);
        request.setAttribute("content", content);
		
        
        
		return "stores/business-profiles";
	}
	
	

}
