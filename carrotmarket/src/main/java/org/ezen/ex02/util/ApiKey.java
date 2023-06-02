package org.ezen.ex02.util;

import lombok.Data;

@Data
public class ApiKey {
	private String KakaoKey;
	
	public ApiKey() {
		this.KakaoKey = "//dapi.kakao.com/v2/maps/sdk.js?appkey=58632bfe0ba106cf455b38e7936a009b&libraries=services";

	}
	
}
