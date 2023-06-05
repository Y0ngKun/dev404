package org.ezen.ex02.service;

import java.util.List;

import org.ezen.ex02.domain.MemberVO;
import org.ezen.ex02.domain.StoresImagesVO;
import org.ezen.ex02.domain.StoresVO;

public interface StoresService {
	
	
	public void register(StoresVO board); //Create

	public StoresVO get(Long bno); //Read

	public boolean modify(StoresVO board); //Update

	public boolean remove(Long bno); //delete

	public List<StoresVO> getList(); //목록 select
	
//	public List<BoardVO> getList(Criteria cri);
//	
//	public int getTotal(Criteria cri);
	
	//게시판 bno에 해당하는 이미지 한장 가져오기
	public StoresImagesVO getAttachList(Long bno);
	
	public List <StoresImagesVO> getAllImages();
	
	public MemberVO getWriterPfImg(int id);


}
