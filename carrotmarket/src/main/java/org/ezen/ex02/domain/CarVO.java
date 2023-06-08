package org.ezen.ex02.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

//bean class(DTO, VO) -> getter/setter, toString, equals 자동생성
@Data
public class CarVO {

	//로그인시 carrot_member 테이블의 ID 정보를 받아올 PK
	private int id; //pk

	//차량 게시글 정보
	private Long cno; //게시글 번호
	private String title; //게시글 제목
	private String writer; //게시글 작성자
	private String content; //게시글 내용
	private Date regDate; //게시글 등록 날짜
	private Date updateDate; //게시글 수정일
	
	//게시판에서 특정 게시글에 첨부되는 첨부파일 리스트(여러개의 첨부 파일을 가져올수 있도록 List로 등록 한다.)
	private List<CarAttachVO> attachList; 
	
	//차량 정보
	private String carName; //차량명
	private String carType; //차종
	private String carYear; //차량 연식
	private String carPrice; //차량의 금액
	private String carDate; //차량 등록일
	private String fuel; //연료
	private String disp; //배기량
	private String Kilos; //키로수
	private String mission; //변속기(종류, 타입)
}