package org.ezen.ex02.mapper;

import org.ezen.ex02.domain.StoresVO;
import org.ezen.ex02.mapper.StoresMapper;
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
public class StoresMapperTests {

	@Setter(onMethod_=@Autowired)
	private StoresMapper mapper;
	
//	@Test
//	public void testGetList() {
//		mapper.getList().forEach(carrot_board -> log.info(carrot_board));
//	}
	
//	@Test
//	public void testsInsert() {
//		Carrot_BoardVO vo = new Carrot_BoardVO();
//		vo.setBno(999L);
//		vo.setContent("jUnitTest 컨텐츠2");
//		vo.setTitle("jUnitTest 타이틀2");
//		vo.setWriter("권용건2");
//		
//		mapper.insertSelectKey(vo);
//		
//		log.info(vo);
//	}
//	
	
//	@Test
//	  public void testReadByBno() {
//	    // 존재하는 게시물 번호로 테스트
//	    Carrot_BoardVO board = mapper.readByBno(5L);
//	    System.out.println(board);
//	    log.info(board);
//	  }
	
//	@Test
//	public void updateTest() {
//		BoardVO vo = new BoardVO();
//		vo.setBno(20L); //존재하는 Bno로 테스트 해야 보임
//		vo.setContent("업데이트 메소드로 업데이트함");
//		vo.setTitle("업데이트 메소드로 업데이트함");
//		vo.setWriter("업데이트 메소드로 업데이트함");
//		mapper.update(vo);
//	}
	
//	@Test
//	public void testRead() {
//		log.info(mapper.read(20L));
//		
//	}
	
	@Test
	public void deleteTests() {
		mapper.delete(21L);
	}


	
	
}
