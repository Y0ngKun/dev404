package org.ezen.ex02.service;

import java.util.List;

import org.ezen.ex02.domain.RealestateAttachVO;
import org.ezen.ex02.domain.RealestateCriteria;
import org.ezen.ex02.domain.RealestateVO;



public interface RealestateService {

	void register(RealestateVO board);
	
	RealestateVO get(Long bno);
	
	boolean modify(RealestateVO board);
	
	public boolean remove(Long bno); //delete
	
	List<RealestateVO> getList();

	/*페이징*/
	List<RealestateVO> getList(RealestateCriteria cri);
	
	/*총게시물 수*/
	int getTotal(RealestateCriteria cri);
	
	public List<RealestateAttachVO> getAttachList(Long bno);

}