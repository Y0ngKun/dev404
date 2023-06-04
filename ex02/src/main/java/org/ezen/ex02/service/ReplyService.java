package org.ezen.ex02.service;

import java.util.List;

import org.ezen.ex02.domain.Criteria;
import org.ezen.ex02.domain.ReplyPageDTO;
import org.ezen.ex02.domain.ReplyVO;

public interface ReplyService {
	
	//mapper의 insert
	public int register(ReplyVO vo);  
    
	//mapper의 read
	public ReplyVO get(Long rno);
	
	//mapper의 update
	public int modify(ReplyVO vo);
	
	//mapper의 delete
	public int remove(Long rno);

    //mapper의 getListWithPaging
	public List<ReplyVO> getList(Criteria cri, Long bno);
	
	public ReplyPageDTO getListPage(Criteria cri, Long bno);
}
