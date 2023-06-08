package org.ezen.ex02.config;

import org.ezen.ex02.handler.SocketHandler;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

@Configuration
@EnableWebSocket
public class WebSocketConfig implements WebSocketConfigurer{

	private SocketHandler socketHandler;

	public WebSocketConfig(SocketHandler socketHandler) {
		this.socketHandler = socketHandler;
	}
	
	@Override
	public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
		registry.addHandler(socketHandler, "/chating/{roomId}").setAllowedOrigins("*");
	}	
}