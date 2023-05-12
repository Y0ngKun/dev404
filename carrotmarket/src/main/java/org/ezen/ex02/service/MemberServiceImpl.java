package org.ezen.ex02.service;

import org.ezen.ex02.domain.MemberVO;
import org.ezen.ex02.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberMapper membermapper;

	@Override
	public void memberJoin(MemberVO memberVO) throws Exception {
		membermapper.memberJoin(memberVO);
		
	}

	@Override
	public MemberVO memberLogin(MemberVO memberVO){
		return membermapper.memberLogin(memberVO);
	}
	
	
	
	
	
	

}
