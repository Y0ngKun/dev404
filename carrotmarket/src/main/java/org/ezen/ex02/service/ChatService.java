package org.ezen.ex02.service;

import java.util.List;

import org.ezen.ex02.domain.ChatRoomVO;
import org.ezen.ex02.domain.ChatVO;

public interface ChatService {
	
	List<ChatRoomVO> getMyChatRoomList(int id);

	ChatRoomVO getChatRoomDetail(String roomId);
	
	List<ChatVO> getMessage(String roomId);
	
	ChatRoomVO findChatRoom(int id, int articleNo);

	ChatRoomVO createChatRoom(int id, int targetUser, int articleNo);

	void insertMessage(ChatVO chatVO);

	void deleteMessage(ChatVO chatVO);

	int deleteChatRoom(String roomId);


}
