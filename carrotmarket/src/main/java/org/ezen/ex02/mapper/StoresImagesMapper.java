package org.ezen.ex02.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;
import org.ezen.ex02.domain.StoresImagesVO;

@Mapper
public interface StoresImagesMapper {
	
public void insert(StoresImagesVO vo);

public void delete(String uuid);

public List<StoresImagesVO> findByBno(Long bno);

public void deleteAll(Long bno);

public List<StoresImagesVO> getOldFiles(); //어제의 첨부 파일 데이터 반환

public List <StoresImagesVO> getAllImages();

public StoresImagesVO getImg(String uuid);

}
