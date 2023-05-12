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

	
	//ȸ������ ������ ����
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String joinForm() {
		
		logger.info("ȸ������ ������ ����");
		
		return "member/join";
	}
	
	//ȸ������ ����
	@PostMapping("/join")
	public String join(MemberVO memberVO) throws Exception {
		
		logger.info("join ����");
		
		// ȸ������ ���� ����
		memberService.memberJoin(memberVO);
		
		logger.info("ȸ������ ����");
		
		return "redirect:/";
	}
	
	//�α��� ������ ����
	@GetMapping("/login")
	public String loginForm() {
		
		logger.info("�α��� ������ ����");
		
		return "member/login";
	}
	

    // �α��ν���
    @PostMapping("/login")
    public String loginPOST(HttpServletRequest request, MemberVO memberVO, RedirectAttributes rttr, Model model) throws Exception{
        
        System.out.println("login �޼��� ����");
       //logger.info("memberVO Ȯ�� " + memberVO);
        
        HttpSession session = request.getSession();
        
//        MemberVO loginVO = memberService.memberLogin(memberVO);
        MemberVO loginVO = memberService.memberLogin(memberVO);
        Model lvo = model.addAttribute(memberVO);
        
        if(loginVO == null) {// �������� �޾ƿ� VO�� ��ġ���� �ʴ� ���̵�, ��й�ȣ
            
            int result = 2;
            //rttr.addFlashAttribute("result", result);
            lvo.addAttribute("result", result);
            return "/member/login";
            
        }
        

        session.setAttribute("member", lvo); // ��ġ�ϴ� ���̵�, ��й�ȣ ��� (�α��� ����)
        
        System.out.println("VO��ġ �α��� ����");
        
        return "/home";
        
    }
	
	
	
	
}
	