package org.ezen.ex02.service;

import java.util.List;

import org.ezen.ex02.domain.CarCriteria;
import org.ezen.ex02.domain.CarReplyPageDTO;
import org.ezen.ex02.domain.CarReplyVO;

public interface CarReplyService {

	public int register(CarReplyVO vo);
	
	public CarReplyVO get(Long rno);
	
	public int modify(CarReplyVO vo);
	
	public int remove(Long rno);
	
	public List<CarReplyVO> getList(CarCriteria cri, Long cno);
	
	public CarReplyPageDTO getListPage(CarCriteria cri, Long cno);
}
