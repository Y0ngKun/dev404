package org.ezen.ex02.service;

import java.util.List;

import org.ezen.ex02.domain.CarAttachVO;
import org.ezen.ex02.domain.CarCriteria;
import org.ezen.ex02.domain.CarVO;

//비즈니스 계청 인터페이스
public interface CarService {

	//페이징을 위한 처리
	//R - 리스트 출력(목록 select - 페이징 처리 후)
	public List<CarVO> getList(CarCriteria cri);
	
	//게시글 총 합계, 페이징을 위한 처리
	public int getTotal(CarCriteria cri);
	
	//기본 CRUD
	//C
	public void register(CarVO car);
	
	//R
	public CarVO get(Long cno);
	
	//U
	public boolean modify(CarVO car);
	
	//D
	public boolean remove(Long cno);
	
	//파일 첨부를 위한 처리
	public List<CarAttachVO> getAttachList(Long cno);
	
	//이미지 1개 가져올 메서드
	public CarAttachVO getImage(Long cno);
}