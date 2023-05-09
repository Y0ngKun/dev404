package org.ezen.ex02.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.ezen.ex02.domain.MemberVO;

@Mapper
public interface MemberMapper {

	MemberVO getMember(String userid);

	void joinMember(MemberVO memberVO);

	MemberVO findMember(String username);

	void modifyUserPwd(MemberVO memberVO);



}
