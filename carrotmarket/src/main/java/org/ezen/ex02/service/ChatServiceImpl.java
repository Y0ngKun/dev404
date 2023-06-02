package org.ezen.ex02.service;

import java.util.List;
import java.util.UUID;

import org.ezen.ex02.domain.ChatRoomVO;
import org.ezen.ex02.domain.ChatVO;
import org.ezen.ex02.mapper.ChatMapper;
import org.ezen.ex02.mapper.SecondHandArticlesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;

@Service
public class ChatServiceImpl implements ChatService{
	
	@Setter(onMethod_=@Autowired)
	private ChatMapper chatMapper;
	
	@Setter(onMethod_=@Autowired)
	private SecondHandArticlesMapper articlesMapper;

	//내 채팅방 불러오기
	@Override
	public List<ChatRoomVO> getMyChatRoomList(int id) {
		List<ChatRoomVO> list = chatMapper.getMyChatRoomList(id);
		return list;
	}
	//채팅방 들어가면 상세 정보 가져오기
	@Override
	public ChatRoomVO getChatRoomDetail(String roomId) {
		ChatRoomVO chatRoomVO = chatMapper.getChatRoomDetail(roomId);
		return chatRoomVO;
	}
	
	//채팅이력 불러오기
	@Override
	public List<ChatVO> getMessage(String roomId) {
		List<ChatVO> list = chatMapper.getMessage(roomId);
		return list;
	}
	
	//채팅방이 존재하는지
	@Override
	public ChatRoomVO findChatRoom(int id, int articleNo) {
		ChatRoomVO chatRoomVO = chatMapper.findChatRoom(id,articleNo);
		return chatRoomVO;
	}
	
	//채팅방이 없으면 새롭게 만들기
	@Override
	public ChatRoomVO createChatRoom(int id, int targetUser, int articleNo) {
		String uuid = UUID.randomUUID().toString();
		
		ChatRoomVO chatRoomVO = new ChatRoomVO();
		chatRoomVO.setRoomId(uuid);
		chatRoomVO.setChatUser(id);
		chatRoomVO.setTargetUser(targetUser);
		chatRoomVO.setArticleNo(articleNo);
		
		chatMapper.createChatRoom(chatRoomVO);
		articlesMapper.chatCountModify(articleNo);
		
		return chatRoomVO;
		
	}
	
	//채팅메세지 db에 저장하기
	@Override
	public void insertMessage(ChatVO chatVO) {
		chatMapper.insertMessage(chatVO);
	}
	//채팅 삭제시 db처리
	@Override
	public void deleteMessage(ChatVO chatVO) {
		chatMapper.deleteMessage(chatVO);
		
	}
	
	//채팅방 나갈 시
	@Override
	@Transactional
	public int deleteChatRoom(String roomId) {
		//메세지 먼저 지우기
		chatMapper.deleteAllMessage(roomId);
		//채팅방 지우기
		return chatMapper.deleteChatRoom(roomId);
	}
	
}
