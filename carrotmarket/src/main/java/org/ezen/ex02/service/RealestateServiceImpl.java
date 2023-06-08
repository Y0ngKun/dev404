package org.ezen.ex02.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import org.ezen.ex02.domain. RealestateAttachVO;
import org.ezen.ex02.domain. RealestateVO;
import org.ezen.ex02.domain. RealestateCriteria;
import org.ezen.ex02.mapper. RealestateAttachMapper;
import org.ezen.ex02.mapper. RealestateMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class RealestateServiceImpl implements  RealestateService {

	@Setter(onMethod_ = @Autowired) 
	//4.3이상 부터는 멤버변수 하나를 사용하는 생성자가 있으면 선언만 해도 자동 주입 
	private RealestateMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private RealestateAttachMapper attachMapper;

	/*첨부파일 처리 전
	@Override
	public Long register(BoardVO board) {
		
		mapper.insertSelectKey(board);
		
		return board.getBno();
		
	}
	*/
	
	/*첨부파일 처리*/
	//BoardMapper와 BoardAttachMapper 동시 처리하므로 트랜젝션 처리
	@Transactional
	@Override
	public void register(RealestateVO board) {

		log.info("register......" + board);

		mapper.insertSelectKey(board);

		if (board.getAttachList() == null || board.getAttachList().size() <= 0) {
			return;
		}

		board.getAttachList().forEach(attach -> {

			attach.setBno(board.getBno()); //bno가 TBL_ATTACH테이블에 필요하므로 지정 해줌
			attachMapper.insert(attach);
		});
	}

	@Override
	public RealestateVO get(Long bno) {
		return mapper.read(bno);
	}

	//첨부물 고려
		@Transactional //두개 테이블 처라하므로 트랜젝션
		@Override
		public boolean modify(RealestateVO board) {

			log.info("modify......" + board);

			attachMapper.deleteAll(board.getBno()); //기존 특정 게시물에 대한 첨부물은 모두 삭제

			boolean modifyResult = mapper.update(board) == 1; //일반게시물은 업데이트
			
			if(board.getAttachList() == null) {
				return modifyResult;
			}
			
			if (modifyResult && board.getAttachList().size() > 0) {

				board.getAttachList().forEach(attach -> {				
					attach.setBno(board.getBno());
					attachMapper.insert(attach);
				});
			}

			return modifyResult;
		}


	
	@Transactional
	@Override
	public boolean remove(Long bno) {

		log.info("remove...." + bno);

		attachMapper.deleteAll(bno);
		
		return mapper.delete(bno) == 1;
	}

	@Override
	public List<RealestateVO> getList() {
		return mapper.getList();
	}
	
	/*페이징*/
	@Override
	public List<RealestateVO> getList(RealestateCriteria cri) {
		return mapper.getListWithPaging(cri);
	}
	
	/*총게시물 수*/
	@Override
	public int getTotal(RealestateCriteria cri) {
		return mapper.getTotalCount(cri);
	}
	
	@Override
	public List<RealestateAttachVO> getAttachList(Long bno) {

		log.info("get Attach list by bno" + bno);

		return attachMapper.findByBno(bno);
	}
}
