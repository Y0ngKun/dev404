package org.ezen.ex02.member.repository;

import org.ezen.ex02.member.dto.MemberDTO;
import org.springframework.stereotype.Repository;


@Repository
public class MemberRepository {

	public int join(MemberDTO memberDTO) {
		System.out.println("memberDTO = " + memberDTO);
		return 0;
	}
		
}
