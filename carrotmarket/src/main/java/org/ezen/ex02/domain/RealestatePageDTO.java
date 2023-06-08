package org.ezen.ex02.domain;

import lombok.Getter;
import lombok.ToString;

@ToString
@Getter
public class RealestatePageDTO {

	private int startPage, endPage;
	private boolean prev, next;
	
	private int total;
	private RealestateCriteria cri;
	
	public RealestatePageDTO(RealestateCriteria cri, int total) {
		this.cri= cri;
		this.total = total;
		
		this.endPage = (int) (Math.ceil(cri.getPageNum()/10.0)) *10;
		
		this.startPage = endPage - 9;
		
		this.prev = this.startPage > 1;
		
		int realEnd = (int)(Math.ceil( (total * 1.0) / cri.getAmount()) );
		
		this.endPage = realEnd <= endPage? realEnd : endPage;
		
		this.next = this.endPage < realEnd;
	}
}
