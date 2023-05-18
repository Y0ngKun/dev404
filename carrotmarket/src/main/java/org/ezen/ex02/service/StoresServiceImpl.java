package org.ezen.ex02.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ezen.ex02.domain.StoresVO;
import org.ezen.ex02.mapper.StoresMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class StoresServiceImpl implements StoresService {
	
	@Setter(onMethod_= {@Autowired})
	private StoresMapper mapper;

	@Override
	//Create
	public void register(StoresVO board) {		
		log.info("register......" + board);

		mapper.insertSelectKey(board);
	}

	@Override
	//Read
	public StoresVO get(Long bno) {		
		log.info("get......" + bno);

		return mapper.read(bno);
	}

	@Override
	public boolean modify(StoresVO board) {

		log.info("modify......" + board);

		return mapper.update(board) == 1;
	}

	@Override
	public boolean delete(Long bno) {

		log.info("remove...." + bno);

		return mapper.delete(bno) == 1;
	}

	@Override
	public List<StoresVO> getList() {
		return mapper.getList();
	}
	
	
	
	/*
	@Override
	//목록보기(select all)
	public List<BoardVO> getList() {		
		log.info("getList..........");
		return mapper.getList();
	}
	*/
//	@Override
//	public List<BoardVO> getList(Criteria cri) {
//
//		log.info("get List with criteria: " + cri);
//
//		return mapper.getListWithPaging(cri);
//	}
//	
//	@Override
//	public int getTotal(Criteria cri) {
//
//		log.info("get total count");
//		return mapper.getTotalCount(cri);
//	}


}
