package org.ezen.ex02.controller;

import java.io.File;
import java.nio.file.Files;
import java.util.List;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.ezen.ex02.domain.MemberVO;
import org.ezen.ex02.domain.StoresImagesVO;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.Setter;

@Controller
@RequestMapping("/stores")
public class StoresController {

	@Setter(onMethod_ = @Autowired)
	private StoresService storesService;
	@Setter(onMethod_ = @Autowired)
	private MemberService memberService;
	
	//동네가게 진입, 게시물 가져오기
	@GetMapping("/stores")
	public String storeMain(Model model, ServletRequest servletRequest, HttpSession session, RedirectAttributes rttr,
			StoresImagesVO imagesVO, HttpServletRequest request) {
		
		//게시물 리스트 가져오기
		List<?> boardList = storesService.getList();
		//view에 게시물 List 넘겨주기
		model.addAttribute("list", boardList);
		
		//사장님 회원만 게시글 작성 가능하도록 category(업종)값 보유 확인 
		String category = (String) session.getAttribute("category");
		if (!(category == null)) {model.addAttribute("message", "1");}
		
		return "stores/stores";
	}

	@GetMapping("images/{loginUser}")
	public ResponseEntity<byte[]> storesImg(@PathVariable("loginUser") int loginUser) {

		//게시물 작성자의 프로필 이미지 가져오기
		MemberVO memberVO = storesService.getWriterImg(loginUser); 
		String uploadPath;
		String fileName;
		String uuid;

		//게시물 작성자가 프로필 이미지 미 등록시 기본이미지로 대체 시작
		if (memberVO == null) {
			uploadPath = "";
			fileName = "default_profile.png";
			uuid = "";
			String imgPath = fileName;
			File file = new File("C:/uploads/" + imgPath);

			ResponseEntity<byte[]> result = null;
			
			try {
				HttpHeaders header = new HttpHeaders();
				header.add("Content-Type", Files.probeContentType(file.toPath()));
				result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return result;
		}
		//게시물 작성자가 프로필 이미지 미 등록시 기본이미지로 대체 끝;
		
		uploadPath = memberVO.getUploadPath();
		fileName = memberVO.getFileName();
		uuid = memberVO.getUuid();

		String imgPath = uploadPath + "/" + "s_" + uuid + "_" + fileName;

		File file = new File("C:/uploads/" + imgPath);

		ResponseEntity<byte[]> result = null;

		try {
			HttpHeaders header = new HttpHeaders();
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
}//end of StoresController;