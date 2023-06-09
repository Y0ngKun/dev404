package org.ezen.ex02.controller;

import java.io.File;

import java.nio.file.Files;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.ezen.ex02.domain.MemberVO;
import org.ezen.ex02.domain.StoresImagesVO;
import org.ezen.ex02.domain.StoresVO;
import org.ezen.ex02.service.MemberService;
import org.ezen.ex02.service.StoresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/stores")
@Log4j
public class StoresController {
	
	@Setter(onMethod_=@Autowired)
	private StoresService storesService;
	
	@Setter(onMethod_=@Autowired)
	private MemberService memberService;
	
	
	@GetMapping("/stores")
	public String storeMain(Model model, ServletRequest servletRequest, HttpSession session, RedirectAttributes rttr,StoresImagesVO imagesVO, HttpServletRequest request) {
		
		String username = (String)session.getAttribute("username");

		List<?> boardList = storesService.getList();

		//List<?> images = service.getAllImages();
		
		model.addAttribute("list", boardList);
		//model.addAttribute("images",images);
		
		if(!(username==null)) {
			model.addAttribute("message","1");
			return "stores/stores";
		}
		if(username == null) {
			return "stores/stores";
		}
		
		return "stores/stores";
	};
	

	@GetMapping("images/{loginUser}")
	public ResponseEntity<byte []> storesImg (@PathVariable("loginUser") int loginUser){
	
		MemberVO memberVO =  storesService.getWriterImg(loginUser);
		
		String uploadPath;
		String fileName;
		String uuid;
		
			if(memberVO == null) {
			
			uploadPath = "";
			fileName = "default_profile.png";
			uuid = "";
			
			String imgPath = fileName; 
			
			File file = new File ("C:/uploads/" + imgPath);
			
			
			ResponseEntity<byte []> result = null;
			
			try {
				HttpHeaders header = new HttpHeaders();
				header.add("Content-Type", Files.probeContentType(file.toPath()));
				result = new ResponseEntity<> (FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return result;
		}
			
		uploadPath  = memberVO.getUploadPath();
		fileName  = memberVO.getFileName();
		uuid  = memberVO.getUuid();
		
		String imgPath = uploadPath + "/" + "s_" + uuid + "_"  + fileName; 
		
		File file = new File ("C:/uploads/" + imgPath);
		
		ResponseEntity<byte []> result = null;
		
		try {
			HttpHeaders header = new HttpHeaders();
<<<<<<< HEAD
=======
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<> (FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	/*
	@GetMapping("/images/{bno}")
	public ResponseEntity<byte []> storesImg (@PathVariable("bno") Long bno){
		
		StoresImagesVO imageVO = service.getAttachList(bno);
		
		String uploadPath  = imageVO.getUploadPath();
		String fileName  = imageVO.getFileName();
		String uuid  = imageVO.getUuid();
		
		String imgPath = uploadPath + "/" + "s_" + uuid + "_"  + fileName; 
		
		
		File file = new File ("C:/upload/" + imgPath);
		
		ResponseEntity<byte []> result = null;
		
		try {
			HttpHeaders header = new HttpHeaders();
			
>>>>>>> kwon
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<> (FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	

//	@PostMapping("/stores")
//	public String register(MultipartFile[] uploadFile,Model model,HttpServletRequest request, HttpSession session,StoresVO storesVO,String title, String content) {
//		String writer = (String)session.getAttribute("username");
//		log.info(writer);
//		System.out.println("writer : "+writer);
//		storesVO.setTitle(title);
//		storesVO.setContent(content);
//		storesVO.setWriter(writer);
//		service.register(storesVO)	;
//		
//		return "redirect:/stores/stores";
//	}
	
	


	
	
	/*
	@GetMapping("/images/{bno}")
	public ResponseEntity<byte []> storesImg (@PathVariable("bno") Long bno){
		
		StoresImagesVO imageVO = service.getAttachList(bno);
		
		String uploadPath  = imageVO.getUploadPath();
		String fileName  = imageVO.getFileName();
		String uuid  = imageVO.getUuid();
		
		String imgPath = uploadPath + "/" + "s_" + uuid + "_"  + fileName; 
		
		
		File file = new File ("C:/upload/" + imgPath);
		
		ResponseEntity<byte []> result = null;
		
		try {
			HttpHeaders header = new HttpHeaders();
			
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<> (FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
*/	
	
	

}
