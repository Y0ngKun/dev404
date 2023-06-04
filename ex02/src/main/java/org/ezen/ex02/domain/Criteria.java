package org.ezen.ex02.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

//페이지 관련 DTO
@ToString
@Setter
@Getter
public class Criteria {

	private int pageNum;
	private int amount;

	// 검색을 위해 추가
	private String type; // 검색종류(title,writer,content)(T,W,C)
	private String keyword;

	public Criteria() { // controller list에 cri값이 전달 안될시 초기값
		this(1, 10);
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}

	// 문자열 type을 배열로 변환(글자 한자씩을 배열로)
	// BoardMapper.xml에서 typeArr이름의 파라메터로 사용이 됨
	// Mybatis는 엄격한 빈규칙을 따르지 않고 getter,setter를 활용
	public String[] getTypeArr() {

		return type == null ? new String[] {} : type.split("");
		// type은 문자열로 공백없이("TWC") 오는데 splity하면 배열 {T,W,C}

	}
	
	//Criteria멤버변수 4개를 하나의 쿼리문자열 형태로 만들어 줌 (?파라메터이름=값&파라메터이름=값
	public String getListLink() {
		// 파라메터 전송에 사용되는 문자열 생성
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("").queryParam("pageNum", this.pageNum)
				.queryParam("amount", this.getAmount()).queryParam("type", this.getType())
				.queryParam("keyword", this.getKeyword());

		return builder.toUriString();
	}
}
