package org.ezen.ex02.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.ezen.ex02.domain.SecondHandAttachVO;

@Mapper
public interface SecondHandAttachMapper {

	void registerImg(SecondHandAttachVO imageVO);
	
	List<SecondHandAttachVO> getArticleImage(int id);
	
	void registerThumbnail(SecondHandAttachVO thumbnail);

	SecondHandAttachVO getThumbnail(int articleNo);

	void deleteArticleAllImage(int id);

	void deleteArticleImageDB(String fileName);
}
