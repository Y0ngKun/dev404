package org.ezen.ex02.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.ezen.ex02.domain.SecondHandLikeVO;

@Mapper
public interface SecondHandLikeMapper {

	int likeArticle(SecondHandLikeVO likeVO);

	int getLastId();

	int unlikeArticle(SecondHandLikeVO likeVO);

	SecondHandLikeVO findLike(@Param("memberNo") int memberNo,@Param("articleNo") int articleNo);

}
