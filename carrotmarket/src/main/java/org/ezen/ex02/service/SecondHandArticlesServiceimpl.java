package org.ezen.ex02.service;


import java.util.List;

import org.ezen.ex02.domain.SecondHandArticleVO;
import org.ezen.ex02.domain.Criteria;
import org.ezen.ex02.mapper.SecondHandArticlesMapper;
import org.ezen.ex02.mapper.SecondHandAttachMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.Setter;

@Service
public class SecondHandArticlesServiceimpl implements SecondHandArticlesService{
	
	@Setter(onMethod_=@Autowired)
	private SecondHandArticlesMapper secondHandArticlesMapper;
	
	@Setter(onMethod_=@Autowired)
	private SecondHandAttachMapper attachMapper;
	
	//게시글+파일 작성하기
	@Override
	@Transactional
	public int registerArticles(SecondHandArticleVO article){
		secondHandArticlesMapper.registerArticles(article);
		
		int articleId = secondHandArticlesMapper.getLastId();
		return articleId;
	}
	
	//내정보에서 내 게시글 띄우기
	@Override
	public List<SecondHandArticleVO> getMyArticles(int id) {
		List<SecondHandArticleVO> list = secondHandArticlesMapper.getMyArticles(id);
		return list;
	}

	//게시글 가져오기
	@Override
	public SecondHandArticleVO getArticle(int id) {
		SecondHandArticleVO articleVO = secondHandArticlesMapper.getArticle(id);
		return articleVO;
	}
	
	//게시글 리스트 불러오기
	@Override
	public List<SecondHandArticleVO> getArticles(Criteria cri) {
		List<SecondHandArticleVO> list = secondHandArticlesMapper.getArticles(cri);
		return list;
	}
	
	//내 게시글 예약중,거래완료 정보 넣기
	@Override
	public void setSell(int id, int sell) {
		secondHandArticlesMapper.setSell(id, sell);
	}

	//게시글 수정
	@Override
	public void modifyArticle(SecondHandArticleVO articleVO) {
		secondHandArticlesMapper.modifyArticle(articleVO);
		
	}	
	//게시글 삭제
	@Override
	public void deleteArticle(int id) {
		secondHandArticlesMapper.deleteArticle(id);
	}
	
	//게시글 조회 수 수정
	@Override
	public void hitCountModify(int id) {
		secondHandArticlesMapper.hitCountModify(id);
	}

}
