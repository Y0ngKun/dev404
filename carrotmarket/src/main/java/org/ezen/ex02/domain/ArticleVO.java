package org.ezen.ex02.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ArticleVO {
	
	//PK
	private int id;
	private int memberNo;
	private String title;
	private String body;
	private int cost;
	private boolean costOffer;
	private Date regDate;
	private Date updateDate;
	private String lng;
	private String lat;
	private String locationInfo;
	private int seil;
	private int hitCount;
	private String thumbnailPath;
	
	//join
	private String nickname;
	private String address;
}
