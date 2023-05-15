package org.ezen.ex02.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.io.File;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.ezen.ex02.domain.ArticleVO;
import org.ezen.ex02.domain.ImageVO;
import org.ezen.ex02.service.ArticlesService;
import org.ezen.ex02.util.ApiKey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.Setter;

@Controller
@RequestMapping("/articles")
public class ArticlesController {
	
	@Setter(onMethod_=@Autowired)
	private ArticlesService articlesService;
	
	@GetMapping("/new")
	public String registerPage(HttpSession session, Model model) {
		String kakaoApiKey = new ApiKey().getKakaoKey(); 
		model.addAttribute("kakaoKey",kakaoApiKey);
		return "articles/register";
	}
	
	@PostMapping("/new")
	public String registerAction(MultipartFile[] files, ArticleVO article){
		int articleId = articlesService.registerArticles(files,article);
		return "redirect:/articles/get?id="+articleId;
	}
	
	@GetMapping("/get")
	public String getArticle(Model model, int id) {
		ArticleVO articleVO = articlesService.getArticle(id);
		model.addAttribute("article",articleVO);
		
		return "articles/article";
	}
	
	@GetMapping(
			value="/image/{articleNo}",
			produces = MediaType.APPLICATION_JSON_VALUE
			)
	@ResponseBody
	public ResponseEntity<List<ImageVO>> getImage(@PathVariable("articleNo") int articleNo){
		
		List<ImageVO> list = articlesService.getArticleImage(articleNo);
		return new ResponseEntity<List<ImageVO>>(list,HttpStatus.OK);
	}
	
	@GetMapping(
			value="/image/{filePath}/{fileName}",
			produces = MediaType.APPLICATION_JSON_VALUE
			)
	@ResponseBody
	public Resource showImage(@PathVariable("filePath") String filePath,  @PathVariable("fileName") String fileName) throws MalformedURLException{
		String fileFullPath = "C:\\Users\\82104\\Desktop\\spring_ex\\teamproject\\carrotmarket\\src\\main\\webapp\\resources"+filePath+"\\"+fileName;
		System.out.println(filePath);
		System.out.println(fileName);
		System.out.println(fileFullPath);
	return new UrlResource("file:"+fileFullPath);
	}
}
