package org.ezen.ex02.controller;

import org.ezen.ex02.domain.CarCriteria;
import org.ezen.ex02.domain.CarReplyPageDTO;
import org.ezen.ex02.domain.CarReplyVO;
import org.ezen.ex02.service.CarReplyService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
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

@RequestMapping("/replies") // replies라는 이름의 경로로 매핑
@RestController //REST 방식을 사용한다.
@Log4j
@AllArgsConstructor
public class CarReplyController {

	private CarReplyService service;
	
	@PostMapping(value = "/new", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody CarReplyVO vo) {
		
		log.info("CarReplyVO : " + vo);
		
		int insertCount = service.register(vo);
		
		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value = "/pages/{cno}/{page}",
			produces = {MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<CarReplyPageDTO> getList(@PathVariable("page") int page, @PathVariable("bno") Long cno) {
		
		CarCriteria cri = new CarCriteria(page, 10);
		
		log.info("get Reply List cno : " + cno);
		log.info("cri : " + cri);
		
		return new ResponseEntity<>(service.getListPage(cri, cno), HttpStatus.OK);
	}
	
	@GetMapping(value = "/{rno}", produces = {MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<CarReplyVO> get(@PathVariable("rno") Long rno) {
		log.info("get : " + rno);
		
		return new ResponseEntity<>(service.get(rno), HttpStatus.OK);
	}
	
	@DeleteMapping(value = "/{rno}", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("rno") Long rno) {
		log.info("remove : " + rno);
		
		return service.remove(rno) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@RequestMapping(method = { RequestMethod.PUT, RequestMethod.PATCH}, 
			value = "/{rno}", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE })
	
	public ResponseEntity<String> modify(@RequestBody CarReplyVO vo, @PathVariable("rno") Long rno) {
		vo.setRno(rno);
		
		log.info("rno : " + rno);
		log.info("modify : " + vo);
		
		return service.modify(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}