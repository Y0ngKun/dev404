package org.ezen.ex02.service;

import java.util.List;

import org.ezen.ex02.domain.SecondHandArticleVO;
import org.ezen.ex02.domain.SecondHandCriteria;

public interface SecondHandArticlesService {

	int registerArticles(SecondHandArticleVO article);

	SecondHandArticleVO getArticle(int id);

	List<SecondHandArticleVO> getArticles(SecondHandCriteria cri);

	List<SecondHandArticleVO> getMyArticles(int id);

	void setSell(int id, int sell);

	void modifyArticle(SecondHandArticleVO articleVO);

	void deleteArticle(int id);

	void hitCountModify(int id);

}
