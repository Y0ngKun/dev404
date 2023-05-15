package org.ezen.ex02.service;

import org.ezen.ex02.domain.MemberVO;
import org.ezen.ex02.mapper.MemberMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MemberServiceImpl implements MemberService{
	
	private MemberMapper memberMapper;
	
	//로그인할때 맴버 가져오기
	@Override
	public MemberVO getMember(String userid) {
		return memberMapper.getMember(userid);
	}

	//회원가입
	@Override
	public void joinMember(MemberVO memberVO) {
		memberMapper.joinMember(memberVO);
	}
	//멤버 pk로 가져오기
	@Override
	public MemberVO getMemberId(int id) {
		MemberVO memberVO = memberMapper.getMemberId(id);
		return memberVO;
	}
	//멤버 수정
	@Override
	public void modifyMember(MemberVO memberVO) {
		memberMapper.modifyMember(memberVO);
	}

	@Override
	public void modifyPasswd(int id, String hashPasswd) {
		MemberVO memberVO = new MemberVO();
		memberVO.setId(id);
		memberVO.setUserpwd(hashPasswd);
		
		memberMapper.modifyPasswd(memberVO);
	}

	@Override
	public void deleteMemberById(int id) {
		memberMapper.deleteMemberById(id);
	}

}
