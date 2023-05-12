package org.ezen.ex02.service;

import org.ezen.ex02.domain.MemberVO;

public interface MemberService {

	
	//ȸ������
	public void memberJoin(MemberVO memberVO) throws Exception;
	
	//�α���
	public MemberVO memberLogin(MemberVO memberVO) throws Exception;

	
}
