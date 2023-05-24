package org.ezen.ex02.controller;

import java.net.http.HttpHeaders;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ezen.ex02.domain.MemberVO;
import org.ezen.ex02.service.MemberService;
import org.ezen.ex02.util.JScript;
import org.mindrot.jbcrypt.BCrypt;
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
	public String loginForm(Model model,HttpServletRequest request) {
		
		String pre_Url = (String)request.getAttribute("url");
		//request.getHeader로 전 url 불러올때
		//로그인이 실패하면 전 url이 로그인폼으로 지정되어서 아래처럼 변경
		
		if(pre_Url == null) {
			model.addAttribute("url", request.getHeader("referer"));
		}else if(pre_Url.contains("member")){
			model.addAttribute("url", "/");
		}else {
			model.addAttribute("url",pre_Url);
		}
		return "member/loginForm";
	}
	
	//로그인 액션
	@PostMapping("/login")
	public String loginAction(HttpSession session, RedirectAttributes rttr,HttpServletResponse response,
			String userid, String userpwd, String url, boolean rememberMe) {
		 
		MemberVO memberVO = memberService.getMember(userid);
		if(memberVO == null) {
			rttr.addFlashAttribute("message", "일치하는 아이디가 없습니다.");
			rttr.addFlashAttribute("url",url);
			return "redirect:/member/login";
		}

		if(!BCrypt.checkpw(userpwd, memberVO.getUserpwd())) {
			rttr.addFlashAttribute("message", "비밀번호가 일치하지 않습니다.");
			rttr.addFlashAttribute("url",url);
			return "redirect:/member/login";
		}
		System.out.println(rememberMe);
		
		if (rememberMe == true) { // 로그인 유지에 체크 했을 떄
			// 쿠키등록하기
			Cookie cookie = new Cookie("userId", memberVO.getUserid());
			cookie.setMaxAge(60 * 60 * 24 * 7); // 쿠키 수명 설정 초단위
			cookie.setPath("/"); // 모든경로에 적용

			response.addCookie(cookie);
		}
		//sql pk(carrot_member id) 세션 등록
		session.setAttribute("loginUser", memberVO.getId());
		session.setAttribute("username", memberVO.getUsername());
		session.setAttribute("usernickname", memberVO.getUsernickname());
		if(url.contains("member")) {
			url = "/";
		}
		
		return "redirect:"+ url;
	}
	
	//로그아웃 액션
	@GetMapping("/logoutAction")
	public String logoutAction(HttpSession session,HttpServletResponse response, HttpServletRequest request) {
		session.invalidate();
		// 쿠키 수명 0으로 만들어서 보내기
				Cookie[] cookies = request.getCookies();
				if (cookies != null) {
					for (Cookie cookie : cookies) {
						if (cookie.getName().equals("userId")) {
							cookie.setMaxAge(0);
							cookie.setPath("/");
							response.addCookie(cookie);
						}
					}
				}
		String url = request.getHeader("referer");
		if(url.contains("member")) {
			return "redirect:/";
		}
		return "redirect:"+url;
	}
	
	//회원가입 폼
	@GetMapping("/join")
	public String joinForm() {
		return "member/joinForm";
	}
	
	//회원가입 액션
	@PostMapping(
			value="/join",
			produces = "text/html;charset=UTF-8"
			)
	public String joinAction(MemberVO memberVO) {

		String hashPasswd = BCrypt.hashpw(memberVO.getUserpwd(), BCrypt.gensalt());
		memberVO.setUserpwd(hashPasswd);
		
		memberService.joinMember(memberVO);
		
		return "member/loginForm";
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
	
	@GetMapping("/myInfo")
	public String myInfo(HttpSession session, Model model) {

		int id = (int) session.getAttribute("loginUser");

		MemberVO memberVO = memberService.getMemberId(id);

		model.addAttribute("member", memberVO);

		return "member/myInfo";

	}
	
	// 내정보 수정
	@GetMapping("/modify")
	public String ModifyForm(HttpSession session, Model model) {
		int id = (int) session.getAttribute("loginUser");
		MemberVO memberVO = memberService.getMemberId(id);

		model.addAttribute("member", memberVO); // front에서 member로 VO값 불러옴

		return "member/memberModify";
	}
		
	// 내정보 수정 후 저장
		@PostMapping(
				value = "/modify",
				produces = "text/html;charset=UTF-8"
					)
		@ResponseBody
		public String modify(MemberVO memberVO){
			
			//1.비밀번호 맞는지 체크
			MemberVO dbMemberVO = memberService.getMemberId(memberVO.getId());
			if(!BCrypt.checkpw(memberVO.getUserpwd(), dbMemberVO.getUserpwd())) { //비밀번호 틀림
				return JScript.back("비밀번호가 틀렸습니다.");
			}
			//2. DB 정보 수정하기
			memberService.modifyMember(memberVO);

			return JScript.href("회원정보 수정 완료", "/ex02/member/myInfo");
		}
		//비밀번호 변경 폼
		@GetMapping("/passwd")
		public String passwdForm() {
			return "member/passwd";
		}
		
		@PostMapping(
				value = "/passwd",
				produces = "text/html;charset=UTF-8"
				)
		@ResponseBody
		public String passwd(String passwd, String newPasswd, String newPasswdConfirm, HttpSession session){
			//1. 현재 비밀번호 맞는지 체크
			int id = (int) session.getAttribute("loginUser");
			MemberVO dbMemberVO = memberService.getMemberId(id);
			
			if(!BCrypt.checkpw(passwd, dbMemberVO.getUserpwd())) { //현재 비밀번호 일치하지 않음 
				return JScript.back("현재 비밀번호가 틀렸습니다.");	
				
			}
			//2. 새 비밀번호, 새 비밀번호 확인 맞는지 체크
			if(newPasswd.equals(newPasswdConfirm) == false) { //새비밀번호, 새비밀번호 확인이 서로 다름 
				return JScript.back("새 비밀번호와 일치하지 않습니다.");	
			}
			if(newPasswd.length() <4) {
				return JScript.back("비밀번호는 4자 이상 입력해주세요");
			}

			//3. DB 비밀번호 변경
			//3-1. 비밀번호 암호화
			String hashPasswd = BCrypt.hashpw(newPasswd, BCrypt.gensalt()); 
			memberService.modifyPasswd(id, hashPasswd);			
			
			//4. 비밀번호 완료 메세지 띄우고 로그아웃처리
			return JScript.href("비밀번호 변경 완료", "/ex02/member/logoutAction");			
		}
		
		//회원탈퇴
		@GetMapping("/remove")
		public String removeForm() {
			return "member/remove";
		}
		
		@PostMapping(
				value="/remove",
				produces = "text/html;charset=UTF-8"
				)
		@ResponseBody
		public String remove(String passwd, HttpSession session){
			
			//1. 비밀번호 체크
			int id = (int) session.getAttribute("loginUser");
			MemberVO dbMemberVO = memberService.getMemberId(id);
			
			if(!BCrypt.checkpw(passwd, dbMemberVO.getUserpwd() )) { //현재 비밀번호 일치하지 않음
				return JScript.back("현재 비밀번호가 틀렸습니다.");
				
			}
			//2. DB에서 해당 아이디 정보 삭제
			memberService.deleteMemberById(id);
			
			//3. 회원탈퇴 메세지 띄우고 로그아웃 처리(세션, 쿠키 삭제)
			return JScript.href("회원탈퇴 완료", "/ex02/member/logoutAction");
		}
		
		
}
