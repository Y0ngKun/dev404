package org.ezen.ex02.domain;

import java.util.Date;

import lombok.Data;

@Data
public class SecondHandArticleVO {
	
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
	private int sell;
	private int hitCount;
	private int chatCount;
	private int likeCount;
	//join
	private String nickname;
	private String address;
	
}
