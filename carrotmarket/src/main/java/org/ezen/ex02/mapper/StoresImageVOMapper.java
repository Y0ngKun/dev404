package org.ezen.ex02.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.ezen.ex02.domain.StoresImageVO;

@Mapper
public interface StoresImageVOMapper {
	
	public void insert(StoresImageVO SImageVO);
	
	public void delete(StoresImageVO SImageVO);
	
	public List<StoresImageVO> findByBno (Long bno);
	
	//첨부물은 수정의 의미가 없으므로 update는 없고 insert,delete

}
