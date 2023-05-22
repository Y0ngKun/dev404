package org.ezen.ex02.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class StoresImageVO {

	   private Integer id;
	   private String originImageName;
	   private String newImageName;
	   private String imagePath;
}
