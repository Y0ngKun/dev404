package org.ezen.ex02.controller;

import java.net.MalformedURLException;
import java.util.List;

import org.ezen.ex02.domain.SecondHandAttachVO;
import org.ezen.ex02.service.SecondHandAttachService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.Setter;

@RestController
@RequestMapping("/shattach")
public class SecondHandAttachController {
	
	@Setter(onMethod_=@Autowired)
	private SecondHandAttachService secondHandAttachService;
	
	//게시글 상세 조회시 이미지 list 불러오기
	@GetMapping(
			value="/{articleNo}",
			produces = MediaType.APPLICATION_JSON_VALUE
			)
	public ResponseEntity<List<SecondHandAttachVO>> getimages(@PathVariable("articleNo") int articleNo){
		List<SecondHandAttachVO> list = secondHandAttachService.getArticleImage(articleNo);
		return new ResponseEntity<>(list,HttpStatus.OK);
	}
	
	//불러온 이미지 Resource로 뿌려주기
	@GetMapping(
			value="/get"
			)
	public Resource showImage(String fileName) throws MalformedURLException{
		StringBuilder fileFullPath = new StringBuilder("C:\\Users\\82104\\Desktop\\spring_ex\\teamproject\\carrotmarket\\src\\main\\webapp\\resources\\");
		if(fileName.equals("non")) {
			fileFullPath.append("images/DaangnMarket_logo.png");
		}else {
			fileFullPath.append(fileName);
		}
		
	return new UrlResource("file:"+ fileFullPath);
	}
	
	//섬네일 뿌리기(이미지중 한장만)
	@GetMapping(value="/thumbnail/{articleNo}")
	public Resource showThumbnail(@PathVariable("articleNo") int articleNo) throws MalformedURLException {
		
		List<SecondHandAttachVO> list = secondHandAttachService.getArticleImage(articleNo);
		
		StringBuilder fileFullPath = new StringBuilder("C:\\Users\\82104\\Desktop\\spring_ex\\teamproject\\carrotmarket\\src\\main\\webapp\\resources\\");
		//만약 이미지가 없으면 고유 사진 한장 띄우기
		if(list == null || list.size() == 0) {
			fileFullPath.append("images/DaangnMarket_logo.png");
		}else {
			fileFullPath.append(list.get(0).getFilePath() +"\\s_"+ list.get(0).getFileName());
		}
		return new UrlResource("file:"+fileFullPath.toString());
	}
	//이미지 지우기
	@PostMapping(
			value="/deleteFile",
			produces = MediaType.TEXT_PLAIN_VALUE
			)
	public ResponseEntity<String> deleteFile(SecondHandAttachVO attachVO){
		secondHandAttachService.deleteArticleFile(attachVO);
		secondHandAttachService.deleteArticleImageDB(attachVO.getFileName());
		return new ResponseEntity<>(HttpStatus.OK);
	}
	
}
