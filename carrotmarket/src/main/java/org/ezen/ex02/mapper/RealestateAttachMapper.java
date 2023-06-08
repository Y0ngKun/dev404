package org.ezen.ex02.mapper;

import java.util.List;

import org.ezen.ex02.domain.RealestateAttachVO;


public interface RealestateAttachMapper {
	
	public void insert(RealestateAttachVO vo);

	public void delete(String uuid);

	//게시물 조회시 게시글에 첨부된 첨부파일 조회용
	public List<RealestateAttachVO> findByBno(Long bno);
	
	public void deleteAll(Long bno);

}
