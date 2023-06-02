package org.ezen.ex02.controller;

import java.util.List;


import org.ezen.ex02.domain.SecondHandArticleVO;
import org.ezen.ex02.domain.SecondHandAttachVO;
import org.ezen.ex02.domain.Criteria;
import org.ezen.ex02.service.SecondHandArticlesService;
import org.ezen.ex02.service.SecondHandAttachService;
import org.ezen.ex02.util.ApiKey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.Setter;

@Controller
@RequestMapping("/sharticle")
public class SecondHandArticlesController {
	
	@Setter(onMethod_=@Autowired)
	private SecondHandArticlesService secondHandArticlesService;
	
	@Setter(onMethod_=@Autowired)
	private SecondHandAttachService attachService;
	
	@GetMapping("/list")
	public String listPage() {
		return "secondhandarticles/list";
	}
	
	//더보기 누를 시 리스트 뿌리기
	@GetMapping(
			value="/list/{page}",
			produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<List<SecondHandArticleVO>> getArticles(@PathVariable("page") int page) {
		Criteria cri = new Criteria(page);
		
		List<SecondHandArticleVO> list = secondHandArticlesService.getArticles(cri);
		
		return new ResponseEntity<>(list,HttpStatus.OK);
	}
	
	//게시글 등록 폼
	@GetMapping("/new")
	public String registerPage(Model model) {
		String kakaoApiKey = new ApiKey().getKakaoKey(); 
		model.addAttribute("kakaoKey",kakaoApiKey);
		return "secondhandarticles/register";
	}
	
	//게시글 등록 액션
	@PostMapping("/new")
	public String registerAction(MultipartFile[] files, SecondHandArticleVO article){
		int articleNo = secondHandArticlesService.registerArticles(article);
		attachService.insertImg(files,articleNo);
		return "redirect:/sharticle/get?id="+articleNo;
	}
	
	//게시글 상세 조회
	@GetMapping("/get")
	public String getArticle(Model model, int id) {
		SecondHandArticleVO articleVO = secondHandArticlesService.getArticle(id);
		model.addAttribute("article",articleVO);
		
		String kakaoApiKey = new ApiKey().getKakaoKey();
		
		model.addAttribute("kakaoKey",kakaoApiKey);
		
		return "secondhandarticles/article";
	}
	
	//게시글 수정 폼
	@GetMapping("/modify")
	public String modifyArticle(Model model,int id) {
		SecondHandArticleVO articleVO = secondHandArticlesService.getArticle(id);
		model.addAttribute("article",articleVO);
		
		String kakaoApiKey = new ApiKey().getKakaoKey();
		model.addAttribute("kakaoKey",kakaoApiKey);
		return "secondhandarticles/modify";
	}

	//게시글 수정
	@PostMapping("/modify")
	public String modifyArticle(SecondHandArticleVO articleVO, MultipartFile[] files) {
			//새롭게 올린 이미지는 db,파일 저장
			attachService.insertImg(files,articleVO.getId());
			//마지막 게시글 수정
			secondHandArticlesService.modifyArticle(articleVO);
		return "redirect:/sharticle/get?id="+articleVO.getId();
	}
	
	//내 게시글 예약중/거래완료로 바꾸기
	@GetMapping("/sell")
	public String isSell(int id, int sell){
		secondHandArticlesService.setSell(id,sell);
		return "redirect:/sharticle/get?id="+id;
	}
	
	//게시글 삭제
	@PostMapping("/delete")
	@ResponseBody
	public ResponseEntity<String> deleteArticle(int id){
		List<SecondHandAttachVO> list = attachService.getArticleImage(id);
		//파일 db삭제
		attachService.deleteArticleAllImage(id);
		//게시글 db삭제
		secondHandArticlesService.deleteArticle(id);
		//파일 삭제
		for(int a = 0; a<list.size(); a++) {
			attachService.deleteArticleFile(list.get(a));
		}
		return new ResponseEntity<>(HttpStatus.OK);
	}
	//리스트에서 게시글 누를 시 조회수 증가
	@PostMapping(value="/hitcount/{id}")
	@ResponseBody
	public ResponseEntity<String> hitcountModify(@PathVariable("id") int id){
		secondHandArticlesService.hitCountModify(id);
		return new ResponseEntity<String>(HttpStatus.OK);
	}
}
