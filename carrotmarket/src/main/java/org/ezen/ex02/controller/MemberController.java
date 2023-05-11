package org.ezen.ex02.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.ezen.ex02.domain.MemberVO;
import org.ezen.ex02.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	
	@Autowired
	private MemberService memberService;

	
	//회원가입 페이지 접속
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String joinForm() {
		
		logger.info("회원가입 페이지 진입");
		
		return "member/join";
	}
	
	//회원가입 실행
	@PostMapping("/join")
	public String join(MemberVO memberVO) throws Exception {
		
		logger.info("join 진입");
		
		// 회원가입 서비스 실행
		memberService.memberJoin(memberVO);
		
		logger.info("회원가입 성공");
		
		return "redirect:/";
	}
	
	//로그인 페이지 접속
	@GetMapping("/login")
	public String loginForm() {
		
		logger.info("로그인 페이지 진입");
		
		return "member/login";
	}
	

    // 로그인실행
    @PostMapping("/login")
    public String loginPOST(HttpServletRequest request, MemberVO memberVO, RedirectAttributes rttr) throws Exception{
        
        System.out.println("login 메서드 진입");
       //logger.info("memberVO 확인 " + memberVO);
        
        HttpSession session = request.getSession();
        
        MemberVO lvo = memberService.memberLogin(memberVO);
        
        if(lvo == null) {// 서버에서 받아온 VO와 일치하지 않는 아이디, 비밀번호
            
            int result = 0;
            rttr.addFlashAttribute("result", result);
            return "/member/login";
            
        }
        
        session.setAttribute("member", lvo); // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
        
        System.out.println("VO일치 로그인 성공");
        
        return "redirect: /";
        
    }
	
	
	
	
}
	