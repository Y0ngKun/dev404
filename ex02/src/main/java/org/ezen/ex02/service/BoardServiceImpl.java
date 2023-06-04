package org.ezen.ex02.service;

import java.util.List;

import org.ezen.ex02.domain.BoardAttachVO;
import org.ezen.ex02.domain.BoardVO;
import org.ezen.ex02.domain.Criteria;
import org.ezen.ex02.mapper.BoardAttachMapper;
import org.ezen.ex02.mapper.BoardMapper;
import org.ezen.ex02.mapper.ReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
//@AllArgsConstructor //모든 멤버 변수를 갖는 생성자(1개시 자동 주입을 위해 사용했으나 2개로 되어 사용 안함)
public class BoardServiceImpl implements BoardService {
	
	@Setter(onMethod_ = @Autowired) 
	//4.3이상 부터는 멤버변수 하나를 사용하는 생성자가 있으면 선언만 해도 자동 주입 
	private BoardMapper mapper;
	
	@Setter(onMethod_ = @Autowired)
	private BoardAttachMapper attachMapper;
	
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper replyMapper;
	
	/*
	@Override
	//Create
	public void register(BoardVO board) {		
		log.info("register......" + board);

		mapper.insertSelectKey(board);
	}
	*/
	@Transactional
	@Override
	public void register(BoardVO board) {

		log.info("register......" + board);

		mapper.insertSelectKey(board);

		if (board.getAttachList() == null || board.getAttachList().size() <= 0) {
			return;
		}

		board.getAttachList().forEach(attach -> {

			attach.setBno(board.getBno());
			attachMapper.insert(attach);
		});
	}
	
	@Override
	//Read
	public BoardVO get(Long bno) {		
		log.info("get......" + bno);

		return mapper.read(bno);
	}
	
	/*
	@Override
	public boolean modify(BoardVO board) {

		log.info("modify......" + board);

		return mapper.update(board) == 1;
	}
	*/
	
	@Transactional
	@Override
	public boolean modify(BoardVO board) {

		log.info("modify......" + board);

		attachMapper.deleteAll(board.getBno());

		boolean modifyResult = mapper.update(board) == 1;
		
		if (modifyResult && board.getAttachList().size() > 0) {

			board.getAttachList().forEach(attach -> {				
				attach.setBno(board.getBno());
				attachMapper.insert(attach);
			});
		}

		return modifyResult;
	}

	/*
	@Override
	public boolean remove(Long bno) {

		log.info("remove...." + bno);

		return mapper.delete(bno) == 1;
	}
	*/
	@Transactional
	@Override
	public boolean remove(Long bno) {

		log.info("remove...." + bno);
		
		replyMapper.deleteAll(bno);

		attachMapper.deleteAll(bno);

		return mapper.delete(bno) == 1;
	}
	
	/*
	@Override
	//목록보기(select all)
	public List<BoardVO> getList() {		
		log.info("getList..........");
		return mapper.getList();
	}
	*/
	@Override
	public List<BoardVO> getList(Criteria cri) {

		log.info("get List with criteria: " + cri);

		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public int getTotal(Criteria cri) {

		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
	
	@Override
	public List<BoardAttachVO> getAttachList(Long bno) {

		log.info("get Attach list by bno" + bno);

		return attachMapper.findByBno(bno);
	}
	

}
