package org.ezen.ex02.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.ezen.ex02.domain.MemberVO;

@Mapper
public interface MemberMapper {
	
	//회원가입
	public void memberJoin(MemberVO memberVO);

	//로그인
	public MemberVO memberLogin(MemberVO memberDTO);
	
}
