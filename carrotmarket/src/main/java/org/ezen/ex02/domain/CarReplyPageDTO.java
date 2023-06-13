package org.ezen.ex02.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;

@Data
@AllArgsConstructor
@Getter
public class CarReplyPageDTO {
	
	private int replyCnt;
	private List<CarReplyVO> list;

}
