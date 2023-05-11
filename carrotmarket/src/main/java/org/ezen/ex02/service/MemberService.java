package org.ezen.ex02.service;

import org.ezen.ex02.domain.MemberVO;

public interface MemberService {

	
	//회원가입
	public void memberJoin(MemberVO member) throws Exception;
	
	//로그인
	public MemberVO memberLogin(MemberVO memberDTO) throws Exception;
}
