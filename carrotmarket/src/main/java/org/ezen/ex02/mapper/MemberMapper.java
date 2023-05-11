package org.ezen.ex02.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.ezen.ex02.domain.MemberVO;

@Mapper
public interface MemberMapper {
	
	//ȸ������
	public void memberJoin(MemberVO memberVO);

	//�α���
	public MemberVO memberLogin(MemberVO memberDTO);
	
}
