package org.ezen.ex02.handler;

import java.util.ArrayList;
import java.util.List;

import org.ezen.ex02.domain.ChatSession;
import org.ezen.ex02.domain.ChatVO;
import org.ezen.ex02.service.ChatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.Setter;

@Component
public class SocketHandler extends TextWebSocketHandler{
	
	//private HashMap<String,WebSocketSession> sessionMap = new HashMap<>();
	//roomid에따라 채팅방 분리를 위해 ChatSession class를 따로 만듬
	private List<ChatSession> sessionList = new ArrayList<>();
	
	@Setter(onMethod_=@Autowired)
	private ChatService chatService;
	
	@Override
	//websocket 연결 성공 시 실행되는 메서드
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		super.afterConnectionEstablished(session);
		//sessionMap.put(session.getId(), session);
		String roomId = session.getUri().toString().split("chating/")[1];
		String sessionId = session.getId();
		ChatSession chatSession = new ChatSession();
		chatSession.setRoomId(roomId);
		chatSession.setSession(session);
		chatSession.setSessionId(sessionId);
		
		sessionList.add(chatSession);
		
	}
	
	@Override
	//websocket 연걸 종료 시 실행되는 메서드
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		//sessionMap.remove(session.getId());
		if(sessionList.size()>0) {
			for(int a = 0; a<sessionList.size(); a++) {
				if(session.getId().equals(sessionList.get(a).getSessionId())) {
					sessionList.remove(a);
				}
			}
		}
		super.afterConnectionClosed(session, status);
	}
	
	@Override
	//메세지 수신 및 송신
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		ObjectMapper objectMapper = new ObjectMapper();
		ChatVO chatVO = objectMapper.readValue(message.getPayload(), ChatVO.class);
		
		if(chatVO.getType().equals("delete")) {
			chatService.deleteMessage(chatVO);
		}else {
			chatService.insertMessage(chatVO);
		}
		if(sessionList.size()>0) {
			for(int a = 0; a<sessionList.size(); a++) {
				if(sessionList.get(a).getRoomId().equals(chatVO.getRoomId())) {
					try {
						sessionList.get(a).getSession().sendMessage(message);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		}
	}
}
