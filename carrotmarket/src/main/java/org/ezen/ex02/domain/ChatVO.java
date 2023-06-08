package org.ezen.ex02.domain;

import lombok.Data;
@Data
public class ChatVO {
	
	private String type;
	
	private String roomId;
	private String message;
	private int sender;
	private String regDate;

}
