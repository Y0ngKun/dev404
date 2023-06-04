package org.ezen.ex02.service;

import java.util.List;

import org.ezen.ex02.domain.BoardAttachVO;
import org.ezen.ex02.domain.BoardVO;
import org.ezen.ex02.domain.Criteria;

//비지니스 계층의 인터페이스
public interface BoardService {
	
	public void register(BoardVO board); //Create

	public BoardVO get(Long bno); //Read

	public boolean modify(BoardVO board); //Update

	public boolean remove(Long bno); //delete

	//public List<BoardVO> getList(); //목록 select
	
	public List<BoardVO> getList(Criteria cri);
	
	public int getTotal(Criteria cri);
	
	public List<BoardAttachVO> getAttachList(Long bno);

}
