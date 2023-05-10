package org.ezen.ex02.member.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberDTO {
	
	private Long id;
	private String memberEmail;
	private String memberPassword;
	private String memberName;
	private String memberGender;
	private int age;
	private String memberMobile;
	
}
