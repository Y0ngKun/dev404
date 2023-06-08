 package org.ezen.ex02.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.ezen.ex02.domain.ChatRoomVO;
import org.ezen.ex02.domain.ChatVO;
import org.ezen.ex02.service.ChatService;
import org.ezen.ex02.service.SecondHandArticlesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RequestMapping("/chat")
@RestController
@Log4j
public class ChatController {
	@Setter(onMethod_=@Autowired )
	private ChatService chatService;
	
	@Setter(onMethod_=@Autowired )
	private SecondHandArticlesService articlesService;
	
	//채팅방 폼
	@GetMapping("/list")
	public ModelAndView chat(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("chat/list");
		return mav;
	}
	//내 채팅방 목록 불러오기 가져올때 채팅방 정보 다 가져오게끔 (ex 해당채팅방 게시글 정보, 유저정보)
	@GetMapping(value="/list/{id}",produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<ChatRoomVO>> getChatRoomList(@PathVariable("id") int id){
		List<ChatRoomVO> list = chatService.getMyChatRoomList(id);
		
		return list.size()>0? new ResponseEntity<>(list,HttpStatus.OK):new ResponseEntity<>(HttpStatus.NOT_FOUND);
	}

	//방에 메세지 이력 가져오기
	@GetMapping(value="/message/{roomId}",produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<ChatVO>> getMessage(@PathVariable("roomId") String roomId){
		List<ChatVO> list = chatService.getMessage(roomId);
		return new ResponseEntity<>(list,HttpStatus.OK);
	}
	
	//게시글에서 채팅하기 누룰때
	@GetMapping("/new")
	public ModelAndView createNewChat(HttpSession session, int targetUser, int articleNo, RedirectAttributes rttr) {
		int id = (int)session.getAttribute("loginUser");
		
		ChatRoomVO chatRoom = chatService.findChatRoom(id,articleNo);
		//만약 전에 해당 게시글 물품대상으로 채팅한적이 없으면 채팅방 새로 만들기
		if(chatRoom == null) {
			chatRoom = chatService.createChatRoom(id,targetUser, articleNo);
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/chat/list");
		rttr.addFlashAttribute("create",chatRoom.getArticleNo());
		return mav;
	}

	//채팅방 나가기
	@DeleteMapping("/{roomId}")
	public ResponseEntity<String> outChatRoom(@PathVariable("roomId") String roomId){
		int result = chatService.deleteChatRoom(roomId);
		return result>0 ? new ResponseEntity<>(HttpStatus.OK) : new ResponseEntity<>(HttpStatus.NOT_FOUND);
	}
	
}
