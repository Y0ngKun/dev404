package org.ezen.ex02.domain;

import lombok.Data;

@Data
public class ChatRoomVO {
	
	private String roomId;
	private int chatUser;
	private int targetUser;
	private int articleNo;
	
	//left join article
	private String title;
	private int cost;
	private int sell;
	
	//left join member
	private String chatUserNickName;
	private String targetUserNickName;
}
