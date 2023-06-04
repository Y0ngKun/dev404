package org.ezen.ex02.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;
import org.ezen.ex02.domain.StoresImageVO;

@Mapper
public interface StoresImagesMapper {
	
public void insert(StoresImageVO vo);

public void delete(String uuid);

public List<StoresImageVO> findByBno(Long bno);

public void deleteAll(Long bno);

public List<StoresImageVO> getOldFiles(); //어제의 첨부 파일 데이터 반환

}
