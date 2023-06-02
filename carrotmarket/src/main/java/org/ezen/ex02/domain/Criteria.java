package org.ezen.ex02.domain;

import lombok.Data;

@Data
public class Criteria {
	private int page;
	
	public Criteria(){
		this(1);
	}
	
	public Criteria(int page){
		this.page = page;
	}
}
