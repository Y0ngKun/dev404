package org.ezen.ex02.member.service;

import org.ezen.ex02.member.dto.MemberDTO;
import org.ezen.ex02.member.repository.MemberRepository;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberService {
	
	private final MemberRepository memberRepository;
	
	public int join(MemberDTO memberDTO) {
		return memberRepository.join(memberDTO);
	}
	
	

}
