package org.ezen.ex02.service;

import java.util.List;

import org.ezen.ex02.domain.MemberVO;
import org.ezen.ex02.domain.StoresImagesVO;
import org.ezen.ex02.domain.StoresVO;
import org.ezen.ex02.mapper.MemberMapper;
import org.ezen.ex02.mapper.StoresImagesMapper;
import org.ezen.ex02.mapper.StoresMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class StoresServiceImpl implements StoresService {
	
	@Setter(onMethod_= {@Autowired})
	private StoresMapper storesMapper;
	
	@Setter(onMethod_= {@Autowired})
	private StoresImagesMapper imageMapper;
	
	@Setter(onMethod_= {@Autowired})
	private MemberMapper memberMapper;
	
	 	//Create, BoardMapper와 BoardAttachMapper 동시 처리하므로 트랜젝션 처리
		@Transactional
		@Override
		public void register(StoresVO board) {
			
			storesMapper.insertSelectKey(board);
			if (board.getAttachList() == null || board.getAttachList().size() <= 0) {
				return;
			}
			board.getAttachList().forEach(attach -> {
				attach.setBno(board.getBno());
				imageMapper.insert(attach);
			});
		}

		@Override
		//Read
		public StoresVO get(Long bno) {		
			log.info("get......" + bno);

			return storesMapper.read(bno);
		}
		
		//Update, 첨부물 미고려한 상태
		@Override
		public boolean modify(StoresVO storesVO) {

			log.info("modify......" + storesVO);

			return storesMapper.modify(storesVO) == 1;
		}
		
		//Delete, 첨부물 고려할 때 삭제
		@Transactional
		@Override
		public boolean remove(Long bno) {

			log.info("remove...." + bno);
			
			//replyMapper.deleteAll(bno);

			imageMapper.deleteAll(bno);

			return storesMapper.delete(bno) == 1;
		}
		
		
		
		//첨부물 고려할때 수정
		/*
		@Transactional //두개 테이블 처리하므로 트랜젝션
		@Override
		public boolean modify(StoresVO board) {

			log.info("modify......" + board);

			imageMapper.deleteAll(board.getBno()); //기존 특정 게시물에 대한 첨부물은 모두 삭제

			boolean modifyResult = storesMapper.update(board) == 1; //일반게시물은 업데이트
			
			//시큐리티 관련 적용전이라 임시처리
			if(board.getAttachList() == null) {
				return modifyResult;
			}
			
			if (modifyResult && board.getAttachList().size() > 0) {

				board.getAttachList().forEach(attach -> {				
					attach.setBno(board.getBno());
					imageMapper.insert(attach);
				});
			}

			return modifyResult;
		}
		*/
		
	
		
		
		
		//댓글 작업 전이라서 활성화
		@Override
		//목록보기(select all)
		public List<StoresVO> getList() {		
			return storesMapper.getList();
		}
		
		
//		@Override
//		public List<StoresVO> getList(Criteria cri) {
//
//			log.info("get List with criteria: " + cri);
//
//			return mapper.getListWithPaging(cri);
//		}
		
		
//		@Override
//		public int getTotal(Criteria cri) {
//
//			log.info("get total count");
//			return mapper.getTotalCount(cri);
//		}
		
		@Override
		public List<StoresImagesVO> getAttachList(Long bno) {


			return imageMapper.findByBno(bno);
		}
		
		
		@Override
		public MemberVO getWriterImg(long id) {

			return memberMapper.getWriterImg(((int)id));
		}
		
		
		
		
		@Override
		public List<StoresImagesVO> getAllImages() {
			
			return imageMapper.getAllImages();
			
		}
		
		


}
