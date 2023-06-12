package org.ezen.ex02.controller;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.util.ArrayList;
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
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	
	//비즈프로필 보여주기
	@GetMapping("/business-profiles")
	public String showBizProfiles(HttpServletRequest request, HttpServletResponse response, Model model, @RequestParam("bno")  long bno, HttpSession session) throws MalformedURLException {
		
		StoresVO storesVO = storesService.get(bno);
		
		//로그인 유저와 게시글 작성자 비교해서 수정 버튼 보이게 model에 값 넘겨주기
		Integer loginUserInteger = (Integer) session.getAttribute("loginUser");
		String loginUser = loginUserInteger.toString();
		
		long writer = storesVO.getWriter();
		String articleWriter = String.valueOf(writer);
	
		
		if(loginUser != null && loginUser.equals(articleWriter)) {
			model.addAttribute("message","1");
		}
		
		model.addAttribute(storesVO);
		model.addAttribute("bno", bno);
		request.setAttribute("bno", bno);
		
		List<StoresImagesVO> storesImagesVO = storesService.getAttachList(bno);
		
		List<File> aa = new ArrayList<>();
	
		for (int i =0; i < storesImagesVO.size(); i++ ) {
			
			
			String uploadPath = storesImagesVO.get(i).getUploadPath();
			String uuid = storesImagesVO.get(i).getUuid();
			String fileName = storesImagesVO.get(i).getFileName();
			
			String imgPath = uploadPath + "/" + uuid + "_"  + fileName; 
			File imgs = new File ("file:///C:/upload/" + imgPath);
			System.out.println("imgs = "+imgs);
			aa.add(imgs);
		}
	
        
		return "stores/business-profiles";
	}
	
	//게시물 상세보기시 회원 프로필 이미지 불러오기
	@GetMapping("images/{writer}")
	public ResponseEntity<byte []> storesImg (@PathVariable("writer") int writer){

		MemberVO memberVO =  storesService.getWriterImg(writer);

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
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<> (FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	/*	
	@GetMapping("iimmgg/{bno}")
	public ResponseEntity<byte []> storesImg (@PathVariable("bno") long bno){
	
		
		List<StoresImagesVO> storesImages = storesService.getAttachList(bno);
		
		String uploadPath;
		String fileName;
		String uuid;
		

		
		List<File> aa = new ArrayList<>();
		
		for (int i =0; i < storesImages.size(); i++ ) {
			
			
			String uploadPath = storesImages.get(i).getUploadPath();
			String uuid = storesImages.get(i).getUuid();
			String fileName = storesImages.get(i).getFileName();
			
			String imgPath = uploadPath + "/" + uuid + "_"  + fileName; 
			File file = new File ("file:///C:/upload/" + imgPath);
			
			aa.add(file);
		}
		
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
	
	
	@GetMapping("imgs/{bno}")
	public ResponseEntity<MultiValueMap<String, Resource>> storesImg(@PathVariable("bno") long bno) {
		System.out.println("게시물 src bno 확인"+bno);
	    List<StoresImagesVO> storesImages = storesService.getAttachList(bno);
	    
	    List<Resource> resources = new ArrayList<>();
	    
	    for (StoresImagesVO image : storesImages) {
	        String uploadPath = image.getUploadPath();
	        String uuid = image.getUuid();
	        String fileName = image.getFileName();
	        
	        String imgPath = uploadPath + "/" + uuid + "_" + fileName;
	        File file = new File("C:/upload/" + imgPath);
	        
	        try {
	            Resource resource = new UrlResource(file.toURI());
	            if (resource.exists()) {
	                resources.add(resource);
	            }
	        } catch (MalformedURLException e) {
	            e.printStackTrace();
	        }
	    }
	    
	    List<MediaType> mediaTypes = new ArrayList<>();
	    resources.forEach(resource -> {
	        try {
	            mediaTypes.add(MediaType.parseMediaType(Files.probeContentType(resource.getFile().toPath())));
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	    });
	    System.out.println("resources = "+resources);
	    
	    MultiValueMap<String, Resource> responseMap = new LinkedMultiValueMap<>();
	    System.out.println("responseMap : " + responseMap);
	    System.out.println("여기까지 오긴하냐");
	    System.out.println("responseMap entrySet : " + responseMap.entrySet());
	    responseMap.put("files", resources);
	    
	    HttpHeaders headers = new HttpHeaders();
	    headers.setContentType(MediaType.MULTIPART_MIXED);
	    headers.setContentDispositionFormData("attachment", null);
	    
	  
	    
	    return new ResponseEntity<>(responseMap, headers, HttpStatus.OK);
	}
	
	
	//게시물 수정하기 페이지
	@GetMapping("/storesModify")
	public String articleModify(Model model,HttpServletRequest request, @RequestParam("bno") Long bno) {
		
		StoresVO storesVO = storesService.get(bno);
		
		model.addAttribute("storesLocation", storesVO.getStoresLocation());
		model.addAttribute("customBenefit", storesVO.getCustomBenefit());
		model.addAttribute("content", storesVO.getContent());
		model.addAttribute("notice", storesVO.getNotice());
		model.addAttribute("storesName",storesVO.getStoreName());
		
		request.setAttribute("bno", bno);
		
		return "stores/storesModify";
	}
	
	
	//게시물 수정하기 액션
	@PostMapping("/storesModify")
	public String ModifyAction(Model model, HttpServletRequest request, StoresVO storesVO, @RequestParam("bno") Long bno) {
		
	    storesService.modify(storesVO);
	    
	    return "redirect:/stores/stores";
	}
	
	//게시글 삭제하기 액션
	@PostMapping("/delete")
	public String deleteAction(Model model, @RequestParam("bno") Long bno) {
		
		storesService.remove(bno);
		
		return "redirect:/stores/stores";
	}
	
	
	
}//BusinessProfilesController;
