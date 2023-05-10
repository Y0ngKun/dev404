package org.ezen.ex02.service;

import org.ezen.ex02.domain.MemberVO;

public interface MemberService {

	MemberVO getMember(String userid);

	void joinMember(MemberVO memberVO);
	
	MemberVO findMember(String username);

	void modifyUserPwd(MemberVO memberVO);

}
