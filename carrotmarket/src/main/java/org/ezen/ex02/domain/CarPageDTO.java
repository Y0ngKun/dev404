package org.ezen.ex02.domain;

import lombok.Getter;
import lombok.ToString;

@Getter //getter 메서드 자동 생성 어노테이션
@ToString //toString을 자동으로 생성해주는 어노테이션
//페이징 관련 DTO
public class CarPageDTO {

	private int startPage; //표시할 페이지 번호중 가장 적은 번호
	private int endPage; //표시할 페이지 번호중 가장 큰 번호
	private boolean prev, next; 
	//prev는 이전 페이지로 이동이 가능한지 여부를 나타내는 boolean값
	//next는 다음 페이지로 이동이 가능한지 여부를 나타내는 boolean값
	
	private int total; //데이터 전체 개수
	private CarCriteria cri; //pageNum, amount

	public CarPageDTO(CarCriteria cri, int total) {
		
		this.cri = cri;
		
		this.total  = total;
		
		//페이징 끝 번호 계산
		this.endPage = (int)(Math.ceil(cri.getPageNum() / 10.0)) * 10;
		//ceil은 .0인 윗수로 올림을 한다.

		//페이징 시작 번호 계산
		this.startPage = this.endPage - 9;
		
		//total을 이용해 endPage를 재계산 처리하기
		int realEnd = (int)(Math.ceil((total * 1.0) / cri.getAmount()));
		
		if(realEnd <= this.endPage) {
			this.endPage = realEnd;
		}
		
		//이전 페이지 처리
		this.prev = this.startPage > 1;
		
		//다음 페이지 처리
		this.next = this.endPage < realEnd;
	}
}