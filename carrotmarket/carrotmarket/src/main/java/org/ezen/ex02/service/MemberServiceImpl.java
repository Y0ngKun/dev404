package org.ezen.ex02.service;

import org.ezen.ex02.domain.MemberVO;
import org.ezen.ex02.mapper.MemberMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService{
	
	private MemberMapper memberMapper;
	
	
	@Override
	public MemberVO getMember(String userid) {
		return memberMapper.getMember(userid);
	}

	@Override
	public void joinMember(MemberVO memberVO) {
		memberMapper.joinMember(memberVO);
	}

	@Override
	public MemberVO findMember(String username) {
		return memberMapper.findMember(username);
	}

	@Override
	public void modifyUserPwd(MemberVO memberVO) {
		memberMapper.modifyUserPwd(memberVO);
		
	}

}
