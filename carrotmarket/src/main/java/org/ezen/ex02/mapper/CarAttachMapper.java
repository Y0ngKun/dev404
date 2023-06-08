package org.ezen.ex02.mapper;

import java.util.List;

import org.ezen.ex02.domain.CarAttachVO;

public interface CarAttachMapper {	
	//첨부파일은 수정이 필요가 없다. update 메서드는 추가 하지 않는다.
	
	//C
	public void insert(CarAttachVO vo);
	
	//D
	public void delete(String uuid);
	
	//R
	public List<CarAttachVO> findByCno(Long cno); 
	//게시물 번호로 첨부파일의 목록을 찾는 메서드
	
	//게시물 이미지 1개 가져오기
	public CarAttachVO getImage(Long cno);
	
	//D
	public void deleteAll(Long cno);
	
	//R
	public List<CarAttachVO> getOldFiles(); //어제 날짜의 첨부 파일 데이터를 반환한다.
	
}
