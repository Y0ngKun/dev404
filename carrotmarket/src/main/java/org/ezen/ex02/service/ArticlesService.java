package org.ezen.ex02.service;

import java.util.List;

import org.ezen.ex02.domain.ArticleVO;
import org.ezen.ex02.domain.ImageVO;
import org.springframework.web.multipart.MultipartFile;

public interface ArticlesService {

	int registerArticles(MultipartFile[] files,ArticleVO article);

	ArticleVO getArticle(int id);

	List<ImageVO> getArticleImage(int id);

}
