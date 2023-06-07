package org.ezen.ex02.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ezen.ex02.domain.StoresVO;
import org.ezen.ex02.service.MemberService;
import org.ezen.ex02.service.StoresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/biz")
@AllArgsConstructor
public class BusinessProfilesController {
	
	@Setter(onMethod_ = @Autowired)
	private StoresService storesService;
	
	
	
	@GetMapping("/business-profiles")
	public String showBizProfiles(HttpServletRequest request, HttpServletResponse response,Long bno, Model model){
		
		StoresVO storesVO = storesService.get(bno);
		
		model.addAttribute(storesVO);
		
		System.out.println("storesVO!!!!!!"+ storesVO);
        
        
		return "stores/business-profiles";
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
			
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<> (FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
*/	
	
	
	

}
