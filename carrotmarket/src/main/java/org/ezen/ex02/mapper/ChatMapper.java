package org.ezen.ex02.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ezen.ex02.domain.ChatRoomVO;
import org.ezen.ex02.domain.ChatVO;

public interface ChatMapper {

	List<ChatRoomVO> getMyChatRoomList(int id);
	
	ChatRoomVO getChatRoomDetail(String roomId);
	
	List<ChatVO> getMessage(String roomId);
	
	

	ChatRoomVO findChatRoom(@Param("id") int id,@Param("articleNo") int articleNo);

	void createChatRoom(ChatRoomVO chatRoomVO);

	ChatRoomVO getChatRoomByRoomId(@Param("roomId") String roomId,@Param("chatUser") int chatUser);

	void insertMessage(ChatVO chatVO);

	void deleteMessage(ChatVO chatVO);

	void deleteAllMessage(String roomId);

	int deleteChatRoom(String roomId);


}
