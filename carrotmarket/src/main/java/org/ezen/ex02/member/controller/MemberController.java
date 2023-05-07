package org.ezen.ex02.member.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.ezen.ex02.controller.HomeController;
import org.ezen.ex02.member.dto.MemberDTO;
import org.ezen.ex02.member.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member")
@RequiredArgsConstructor
public class MemberController {
	
	
	private final MemberService memberService;

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String saveForm() {
		return "/member/join";
	}
	
	@PostMapping("/join")
	public String join(@ModelAttribute MemberDTO memberDTO) {
		
		int saveResult = memberService.join(memberDTO);	
		
		if (saveResult > 0) {
			return "/member/login";
		}
		else {
			return "/member/join";
		}
	}
	

}
