package org.ezen.ex02.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ezen.ex02.domain.StoresVO;

public interface StoresService {
	
	
	public void register(StoresVO board); //Create

	public StoresVO get(Long bno); //Read

	public boolean modify(StoresVO board); //Update

	public boolean delete(Long bno); //delete

	public List<StoresVO> getList(); //목록 select
	
//	public List<BoardVO> getList(Criteria cri);
//	
//	public int getTotal(Criteria cri);


}
