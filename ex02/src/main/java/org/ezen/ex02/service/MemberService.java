package org.ezen.ex02.service;

import org.ezen.ex02.domain.MemberVO;

public interface MemberService {
	
	public String joinIdCheck(String userid);
	
	public int joinRegister(MemberVO vo);

}
