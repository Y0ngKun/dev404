package org.ezen.ex02.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.ezen.ex02.domain.ImageVO;

@Mapper
public interface ImageVOMapper {
	
	public void insert(ImageVO imageVO);
	
	public void delete(ImageVO imageVO);
	
	public List<ImageVO> findByBno (Long bno);
	
	//첨부물은 수정의 의미가 없으므로 update는 없고 insert,delete

}
