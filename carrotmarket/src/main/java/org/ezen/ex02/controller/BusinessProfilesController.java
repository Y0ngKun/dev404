package org.ezen.ex02.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.ezen.ex02.domain.StoresImagesVO;
import org.ezen.ex02.domain.StoresVO;
import org.ezen.ex02.service.MemberService;
import org.ezen.ex02.service.StoresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String showBizProfiles(HttpServletRequest request, HttpServletResponse response, Model model, @RequestParam("bno")  long bno){
		
		StoresVO storesVO = storesService.get(bno);
		
		//StoresImagesVO storesImagesVO = storesService.getAttachList(bno);
		
		
		//System.out.println("storesImagesVO 확인!!!! :"+storesImagesVO);
		
		
		
		model.addAttribute(storesVO);
		
		model.addAttribute("bno", bno);
		
		request.setAttribute("bno", bno);
		
		List<StoresImagesVO> storesImagesVO = storesService.getAttachList(bno);
		
		
		List<File> aa = new ArrayList<File>();
		
		for (int i =0; i < storesImagesVO.size(); i++ ) {
			
			String uploadPath = storesImagesVO.get(i).getUploadPath();
			String uuid = storesImagesVO.get(i).getUuid();
			String fileName = storesImagesVO.get(i).getFileName();
			
			String imgPath = uploadPath + "/" + uuid + "_"  + fileName; 
			File file = new File ("C:/upload/" + imgPath);
			
			aa.add(i,file);
			
		}
		
//		System.out.println("리스트 집어 넣을 거 확인  : "+aa.get(0));
//		System.out.println("리스트 집어 넣을 거 확인  : "+aa.get(1));
//		System.out.println("리스트 집어 넣을 거 확인  : "+aa.get(2));
		
		model.addAttribute(aa);
		//aa 넣었는데 왜 vo다 갖고 있고 이름이 fileList??
		
		
		//System.out.println("모델 model.addAttribute(aa) 확인 : "+model.addAttribute(aa));
		
        System.out.println(model);
        
		return "stores/business-profiles";
	}
	
	
	//게시물 수정하기
	@GetMapping("/storesModify")
	public String articleModify(Model model, StoresVO storesVO,HttpServletRequest request) {
		
		
		
		
		
		
		log.info("request.getAttribute(\"bno\")는 : "+request.getAttribute("bno"));
		
		
		
		
		log.info("model.getAttribute(\"bno\"); 를 하면 : " + model.getAttribute("bno"));
		
		log.info("storesVO.getBno() 는 : "+storesVO.getBno());
		
		
		return "stores/storesModify";
	}
	
}
