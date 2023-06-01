package org.ezen.ex02.service;



import org.ezen.ex02.domain.MemberVO;

public interface MemberService {

	MemberVO getMember(String userid);

	void joinMember(MemberVO memberVO);

	MemberVO getMemberId(int id);

	void modifyMember(MemberVO memberVO);

	void modifyPasswd(int id, String hashPasswd);

	void deleteMemberById(int id);
	
	MemberVO getPfImg (int id);
	
	

}
