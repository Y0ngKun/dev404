package org.ezen.ex02.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.ezen.ex02.domain.SecondHandArticleVO;
import org.ezen.ex02.domain.SecondHandCriteria;

@Mapper
public interface SecondHandArticlesMapper {

	void registerArticles(SecondHandArticleVO article);

	int getLastId();

	SecondHandArticleVO getArticle(int id);

	List<SecondHandArticleVO> getArticles(SecondHandCriteria cri);

	List<SecondHandArticleVO> getMyArticles(int id);

	void setSell(@Param("id") int id,@Param("sell") int sell);

	void modifyArticle(SecondHandArticleVO articleVO);

	void deleteArticle(int id);

	void hitCountModify(int id);

	void chatCountModify(int id);

	void updateLikeCnt(@Param("id") int id,@Param("amount") int amount);

}
