package org.ezen.ex02.domain;

import lombok.Data;

@Data
public class SecondHandCriteria {
	private int page;
	
	public SecondHandCriteria(){
		this(1);
	}
	
	public SecondHandCriteria(int page){
		this.page = page;
	}
}
