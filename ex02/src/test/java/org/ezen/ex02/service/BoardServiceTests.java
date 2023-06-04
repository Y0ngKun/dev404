package org.ezen.ex02.service;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.ezen.ex02.domain.BoardVO;
import org.ezen.ex02.domain.Criteria;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	
	@Setter(onMethod_ = { @Autowired })
	private BoardService service; //느슨한 결합을 위해 인터페이스로 주입
	
	/*
	@Test
	public void testExist() {
		
		log.info(service);
		assertNotNull(service); //service빈이 null이 아니어야 테스트 성공
	}
		
	@Test
	//BoardService의 public void register(BoardVO board)메서드 테스트
	public void testRegister() {

		BoardVO board = new BoardVO();
		board.setTitle("새로 작성하는 글");
		board.setContent("새로 작성하는 내용");
		board.setWriter("newbie");

		service.register(board);

		log.info("생성된 게시물의 번호: " + board.getBno());
	}
	*/
	@Test
	//BoardService의 public List<BoardVO> getList()메서드 테스트
	public void testGetList() {

		//service.getList().forEach(board -> log.info(board));
		service.getList(new Criteria(2, 10)).forEach(board -> log.info(board + "입니다"));
		
	}
	
	/*
	@Test
	//BoardService의 public BoardVO get(Long bno)테스트
	public void testGet() {

		log.info(service.get(1L));
	}
	
	
	@Test
	//BoardServicedml modify메서드 테스트
	public void testUpdate() {

		BoardVO board = service.get(1L);

		if (board == null) {
			return;
		}

		board.setTitle("제목 수정합니다.");
		log.info("MODIFY RESULT: " + service.modify(board));
	}
	
	@Test
	//remove메서드 테스트
	public void testDelete() {

		// 게시물 번호의 존재 여부를 확인하고 테스트할 것
		log.info("REMOVE RESULT: " + service.remove(2L));

	}
	*/
}
