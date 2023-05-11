package org.ezen.ex02.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
public class MemberVO {
	
	private String memberId;
	private String memberName;
	private String memberPW;	
	private String memberEmail;
	private String memberMobile;
	
}
