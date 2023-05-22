package org.ezen.ex02.domain;

import java.util.List;

import lombok.Data;

@Data
public class ImageVO {

	//pk
	private int id;
	private String fileName;
	private String filePath;
	//fk
	private int articleNo;
}
