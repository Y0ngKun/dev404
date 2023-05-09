package org.ezen.ex02.member.service;

import org.ezen.ex02.member.dto.MemberDTO;
import org.ezen.ex02.member.repository.MemberRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
public class MemberService {
	
	private final MemberRepository memberRepository;
	
	public int join(MemberDTO memberDTO) {
		
		return memberRepository.join(memberDTO);
	}

	public boolean login(MemberDTO memberDTO) {
		MemberDTO loginMember = memberRepository.login(memberDTO);
		if(loginMember != null) {
			return true;
			}else {
				return false;
				}
	}
	
	

}
