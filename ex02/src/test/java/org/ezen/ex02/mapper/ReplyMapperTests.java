package org.ezen.ex02.mapper;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.List;

import org.ezen.ex02.domain.Criteria;
import org.ezen.ex02.domain.ReplyVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class ReplyMapperTests {
	
	//setter로 아래 객체를 주입
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;
	
	private Long[] bnoArr = { 56L, 57L, 58L, 59L, 60L };
	
	/*
	@Test
	//mapper객체 주입 여부 확인
	public void testMapper() {

		log.info(mapper);
	}
	*/
	
	/*
	@Test
	public void testCreate() {

		IntStream.rangeClosed(1, 10).forEach(i -> {
			//rangeClosed(1, 10)는 1부터 10까지 1씩 증가하면서 선택
			//forEach는 1부터 10까지 반복
			ReplyVO vo = new ReplyVO();

			// 게시물의 번호
			vo.setBno(bnoArr[i % 5]);
			vo.setReply("댓글 테스트 " + i);
			vo.setReplyer("replyer" + i);

			mapper.insert(vo);
		});
	}	
	*/
	
	/*
	@Test
	public void testRead() {

		Long targetRno = 5L;

		ReplyVO vo = mapper.read(targetRno);

		log.info(vo);

	}
	*/
	
	/*
	@Test
	public void testDelete() {

		Long targetRno = 1L;

		mapper.delete(targetRno);
	}
	*/
	/*
	@Test
	public void testUpdate() {

		Long targetRno = 10L;

		ReplyVO vo = mapper.read(targetRno);
		//조회로 10번 읽어옴

		vo.setReply("Update Reply ");
		//vo객체의 reply멤버변수 변경

		int count = mapper.update(vo);
		//count는 update성공한 개수

		log.info("UPDATE COUNT: " + count);
	}
	*/
	/*
	@Test
	public void testList() {

		Criteria cri = new Criteria();

		// bnoArr[0]
		List<ReplyVO> replies = mapper.getListWithPaging(cri, bnoArr[0]);

		replies.forEach(reply -> log.info(reply));

	}
	*/
	
	@Test
	public void testList2() {

		Criteria cri = new Criteria(2, 10);

		// bno는 있는걸로
		List<ReplyVO> replies = mapper.getListWithPaging(cri, 157L);

		replies.forEach(reply -> log.info(reply));

	}
	
}
