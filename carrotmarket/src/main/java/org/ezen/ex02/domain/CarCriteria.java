package org.ezen.ex02.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
//페이징, 검색 관련 클래스
public class CarCriteria {

	//페이징 처리
	private int pageNum; //페이지 번호
	private int amount; //페이지당 레코드의 갯수
	
	//페이징 처리
	public CarCriteria() {
		this(1, 12);
	}
	
	//페이징 처리
	public CarCriteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}