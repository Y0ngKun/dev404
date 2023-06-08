package org.ezen.ex02.service;

import org.ezen.ex02.domain.SecondHandLikeVO;

public interface SecondHandLikeService {

	int likeArticle(SecondHandLikeVO likeVO);

	int unlikeArticle(SecondHandLikeVO likeVO);

	SecondHandLikeVO findLike(int memberNo, int articleNo);
}
