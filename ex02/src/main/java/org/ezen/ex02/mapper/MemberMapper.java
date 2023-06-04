package org.ezen.ex02.mapper;

import org.ezen.ex02.domain.AuthVO;
import org.ezen.ex02.domain.MemberVO;

public interface MemberMapper {

	public MemberVO read(String userid);

	public int memberJoin(MemberVO mVO);

	public int memberAuth(AuthVO aVO);

}
