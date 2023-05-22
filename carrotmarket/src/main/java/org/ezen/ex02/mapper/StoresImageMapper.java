package org.ezen.ex02.mapper;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Getter
@Setter
public class StoresImageMapper {
	
	  private String originImageName;
	  private String newImageName;
	  private String imagePath;
	  
	  @Builder
	  public StoresImageMapper(String originImageName, String newImageName, String imagePath) {
	      this.originImageName = originImageName;
	      this.newImageName = newImageName;
	      this.imagePath = imagePath;
	    }

}
