package org.ezen.ex02.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SecondHandAttachVO {

	//pk
	private String fileName;
	private String filePath;
	//fk
	private int articleNo;
}
