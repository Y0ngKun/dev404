package org.ezen.ex02.controller;

import javax.servlet.http.HttpSession;

import org.ezen.ex02.domain.SecondHandLikeVO;
import org.ezen.ex02.service.SecondHandLikeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.Setter;

@RestController
@RequestMapping("/shlike")
public class SecondHandLikeController {
	
	@Setter(onMethod_=@Autowired)
	private SecondHandLikeService likeService;
	
	//게시글 상세 조회 시 관심글인지 확인
	@GetMapping(value="/like/{articleNo}")
	public ResponseEntity<String> findLike(HttpSession session, @PathVariable("articleNo") int articleNo){
		if(session.getAttribute("loginUser") == null) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}
		int memberNo = (int)session.getAttribute("loginUser");
		SecondHandLikeVO likeVO = likeService.findLike(memberNo, articleNo);
		String result = likeVO != null ? "success" : "fail";
		return new ResponseEntity<>(result,HttpStatus.OK);
	}
	//관심 게시글 설정
	@PostMapping(value="/like/{articleNo}")
	public ResponseEntity<String> likeArticle(HttpSession session,@PathVariable("articleNo") int articleNo){
		int memberNo = (int)session.getAttribute("loginUser");
		
		SecondHandLikeVO likeVO = new SecondHandLikeVO();
		
		likeVO.setArticleNo(articleNo);
		likeVO.setMemberNo(memberNo);
		
		int result = likeService.likeArticle(likeVO);
		return result > 0 ? new ResponseEntity<>(HttpStatus.OK) : new ResponseEntity<>(HttpStatus.NOT_FOUND);
	}
	//관심 게시글 삭제
	@DeleteMapping("/unlike/{articleNo}")
	public ResponseEntity<String> unlikeArticle(HttpSession session,@PathVariable("articleNo") int articleNo){
		int memberNo = (int)session.getAttribute("loginUser");
		
		SecondHandLikeVO likeVO = new SecondHandLikeVO();
		likeVO.setArticleNo(articleNo);
		likeVO.setMemberNo(memberNo);
		
		int result = likeService.unlikeArticle(likeVO);
		return result > 0 ? new ResponseEntity<>(HttpStatus.OK) : new ResponseEntity<>(HttpStatus.NOT_FOUND);
	}
}
