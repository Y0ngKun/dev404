 package org.ezen.ex02.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.ezen.ex02.domain.MemberVO;
import org.ezen.ex02.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.Setter;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Setter(onMethod_=@Autowired)
	private MemberService memberService;
	
	//로그인 폼
	@GetMapping("/login")
	public String loginForm(Model model, HttpServletRequest request) {
		model.addAttribute("url",request.getHeader("referer"));
		return "member/loginForm";
	}
	
	//로그인 액션
	@PostMapping("/login")
	public String loginAction(HttpSession session, Model model, String userid, String userpwd, String url) {
		 
		MemberVO memberVO = memberService.getMember(userid);
		
		if(memberVO == null) {
			model.addAttribute("message", "아이디 혹은 비밀번호가 맞지않습니다.");
			return "member/loginForm";
		}
		if(!memberVO.getUserpwd().equals(userpwd)) {
			model.addAttribute("message", "아이디 혹은 비밀번호가 맞지않습니다.");
			return "member/loginForm";
		}
		session.setAttribute("loginUser", memberVO.getId());
		
		return "redirect:"+url;
	}
	
	//로그아웃 액션
	@GetMapping("/logoutAction")
	public String logoutAction(HttpSession session, HttpServletRequest request) {
		session.invalidate();
		String url = request.getHeader("referer");
		return "redirect:" + url;
	}
	
	//회원가입 폼
	@GetMapping("/join")
	public String joinForm() {
		return "member/joinForm";
	}
	
	//회원가입 액션
	@PostMapping("/join")
	public String joinAction(MemberVO memberVO) {
		memberService.joinMember(memberVO);
		return "redirect:/";
	}
	
	//아이디 중복 확인
	@GetMapping(
			value ="/join/{userid}",
			produces ={MediaType.TEXT_PLAIN_VALUE}
			)
	@ResponseBody
	public ResponseEntity<String> idCheck(@PathVariable("userid") String userid){
		
		MemberVO memberVO = memberService.getMember(userid);
		
		return memberVO == null ? new ResponseEntity<String>(HttpStatus.OK) : new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	//아이디 찾기 폼
	@GetMapping("/findid")
	public String findIdForm() {
		return "member/findIdForm";
	}
	
	//아이디 찾기 액션
	@PostMapping("/findid")
	public String findIdAction(Model model, String username, RedirectAttributes rttr) {
		
		MemberVO memberVO = memberService.findMember(username);
		if(memberVO == null) {
			rttr.addFlashAttribute("message","존재하지 않은 회원입니다.");
			return "redirect:/member/findid";
		}
		 
		model.addAttribute("findIdList",memberVO.getUserid());
		return "member/findSuccessID";
	}
	
	//비밀번호 찾기 폼
	@GetMapping("/findpwd")
	public String findPwdForm() {
		return "member/findPwdForm";
	}
	
	//비밀번호 찾기 액션
	@PostMapping("/findpwd")
	public String findPwdAction(Model model, String userid, RedirectAttributes rttr) {
		
		MemberVO memberVO = memberService.getMember(userid);
		
		if(memberVO == null) {
			rttr.addFlashAttribute("message", "회원 정보가 없습니다.");
			return "redirect:/member/findpwd";
		}
		model.addAttribute("member",memberVO);
		
		return "member/findSuccessPWD";
	}
	
	//비밀번호 찾으면 새롭운 비밀번호로 바꿀수 있게
	@PostMapping("/modifyPWD")
	public String modifyPWD(MemberVO memberVO) {
		memberService.modifyUserPwd(memberVO);
		return "redirect:/";	
	}

}
