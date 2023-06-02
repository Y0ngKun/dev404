package org.ezen.ex02.domain;

import org.springframework.web.socket.WebSocketSession;

import lombok.Data;

@Data
public class ChatSession {
	
	private String roomId;
	private WebSocketSession session;
	private String sessionId;
}
