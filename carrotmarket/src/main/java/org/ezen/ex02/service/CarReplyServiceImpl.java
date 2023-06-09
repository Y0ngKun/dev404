package org.ezen.ex02.service;

import java.util.List;

import org.ezen.ex02.domain.CarCriteria;
import org.ezen.ex02.domain.CarReplyPageDTO;
import org.ezen.ex02.domain.CarReplyVO;
import org.ezen.ex02.mapper.CarMapper;
import org.ezen.ex02.mapper.CarReplyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class CarReplyServiceImpl implements CarReplyService {

	@Setter(onMethod_= @Autowired)
	private CarReplyMapper mapper;
	
	@Setter(onMethod_= @Autowired)
	private CarMapper carMapper;
	
	@Override
	public int register(CarReplyVO vo) {
		log.info("register 호출!" + vo);
		
		carMapper.updateReplyCnt(vo.getCno(), 1);
		
		return mapper.insert(vo);
	}

	@Override
	public CarReplyVO get(Long rno) {
		log.info("get 호출!" + rno);
		
		return mapper.read(rno);
	}

	@Override
	public int modify(CarReplyVO vo) {
		
		log.info("modify 호출!" + vo);
		
		return mapper.update(vo);
	}

	@Override
	public int remove(Long rno) {
		log.info("remove 호출!" + rno);
		
		CarReplyVO vo = mapper.read(rno);
		
		carMapper.updateReplyCnt(vo.getCno(), -1);
		
		return mapper.delete(rno);
	}

	@Override
	public List<CarReplyVO> getList(CarCriteria cri, Long cno) {
		
		log.info("getList 호출!" + cno);
		
		return mapper.getListWithPaging(cri, cno);
	}

	@Override
	public CarReplyPageDTO getListPage(CarCriteria cri, Long cno) {

		return new CarReplyPageDTO(mapper.getCountByCno(cno), mapper.getListWithPaging(cri, cno));
	}
}