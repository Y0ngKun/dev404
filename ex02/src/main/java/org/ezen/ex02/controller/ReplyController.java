package org.ezen.ex02.controller;

import java.util.List;

import org.ezen.ex02.domain.Criteria;
import org.ezen.ex02.domain.ReplyPageDTO;
import org.ezen.ex02.domain.ReplyVO;
import org.ezen.ex02.service.ReplyService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/replies")
@RestController // REST방식 사용
@Log4j
@AllArgsConstructor
public class ReplyController {

	private ReplyService service;
	// 멤버변수 하나이고 파라메터가 이 멤버변수를 가진 생성자가 있으므로 자동 주입

	@PreAuthorize("isAuthenticated()")
	@PostMapping(value = "/new", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
	// consumes속성은 클라이언트에서 전달 받는 데이터의 MIME
	// produces는 이메서드가 생산하는 데이터형
	public ResponseEntity<String> create(@RequestBody ReplyVO vo) {
		// ResponseEntity는 값과 상태를 갖이 보냄
		// @RequestBody는 전달받은 json문자열을 자바의 객체로 변환

		log.info("ReplyVO: " + vo);

		int insertCount = service.register(vo); // insert작업이므로 결과는 insert성공 개수

		log.info("Reply INSERT COUNT: " + insertCount);

		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		// ResponseEntity<>객체를 반환(생성자가 성공시와 실패시 파라메터가 다름)
	}
	
	/*
	@GetMapping(value = "/pages/{bno}/{page}", produces = { MediaType.APPLICATION_JSON_VALUE })
	// {bno}/{page}는 경로 아닌 값 @PathVariable로 매핑
	// 게시글 하나에 대한 댓글들
	public ResponseEntity<List<ReplyVO>> getList(@PathVariable("page") int page, @PathVariable("bno") Long bno) {

		Criteria cri = new Criteria(page, 10);

		log.info("get Reply List bno: " + bno);

		log.info("cri:" + cri);

		return new ResponseEntity<>(service.getList(cri, bno), HttpStatus.OK);
	}
	*/
	
	
	@GetMapping(value = "/pages/{bno}/{page}", 
			produces = {MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<ReplyPageDTO> getList(@PathVariable("page") int page, @PathVariable("bno") Long bno) {

		Criteria cri = new Criteria(page, 10);
		
		log.info("get Reply List bno: " + bno);

		log.info("cri:" + cri);			

		return new ResponseEntity<>(service.getListPage(cri, bno), HttpStatus.OK);
	}
	
	
	@GetMapping(value = "/{rno}", produces = { MediaType.APPLICATION_JSON_VALUE })	
	// 지정 댓글 정보 조회
	public ResponseEntity<ReplyVO> get(@PathVariable("rno") Long rno) {

		log.info("get: " + rno);		
		 

		return new ResponseEntity<>(service.get(rno), HttpStatus.OK);
	}
	
	
	@DeleteMapping(value = "/{rno}", produces = { MediaType.TEXT_PLAIN_VALUE })
	@PreAuthorize("isAuthenticated()")	
	public ResponseEntity<String> remove(@PathVariable("rno") Long rno)  {

		log.info("remove: " + rno);

		return service.remove(rno) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);

	}
	
	
	/*
	//@PreAuthorize("principal.username == #vo.replyer")
	@DeleteMapping(value = "/{rno}", consumes = "application/json" ,produces = { MediaType.TEXT_PLAIN_VALUE })
	@PreAuthorize("isAuthenticated()")
	//@RequestMapping(method = {RequestMethod.DELETE}, value = "/{rno}", 
	//consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> remove(@RequestBody ReplyVO vo, @PathVariable("rno") Long rno)  {

		log.info("remove: " + rno);

		return service.remove(rno) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);

	}
	 */
	@PreAuthorize("principal.username == #vo.replyer")
	@RequestMapping(method = { RequestMethod.PUT,RequestMethod.PATCH }, value = "/{rno}", 
			consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE })
	//rno값과 json으로 된 ReplyVO멤버변수 값이 옴 
	public ResponseEntity<String> modify(@RequestBody ReplyVO vo, @PathVariable("rno") Long rno) {

		vo.setRno(rno);

		log.info("rno: " + rno);
		log.info("modify: " + vo);

		return service.modify(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);

	}
	
	
}
