package org.ezen.ex02.service;

import org.ezen.ex02.domain.SecondHandLikeVO;
import org.ezen.ex02.mapper.SecondHandArticlesMapper;
import org.ezen.ex02.mapper.SecondHandLikeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;
@Service
public class SecondHandLikeServiceImpl  implements SecondHandLikeService{

	@Setter(onMethod_=@Autowired)
	private SecondHandLikeMapper likeMapper;
	
	@Setter(onMethod_=@Autowired)
	private SecondHandArticlesMapper articlesMapper;
	
	//관심글 설정시 게시글 db도 수정
	@Override
	@Transactional
	public int likeArticle(SecondHandLikeVO likeVO) {
		int result = likeMapper.likeArticle(likeVO);
		articlesMapper.updateLikeCnt(likeVO.getArticleNo(),1);
		return result;
	}

	@Override
	@Transactional
	public int unlikeArticle(SecondHandLikeVO likeVO) {
		int result = likeMapper.unlikeArticle(likeVO);
		articlesMapper.updateLikeCnt(likeVO.getArticleNo(), -1);
		return result;
	}
	//관심글 확인
	@Override
	public SecondHandLikeVO findLike(int memberNo, int articleNo) {
		return likeMapper.findLike(memberNo, articleNo);
	}	
}
