package org.ezen.ex02.controller;


import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.ezen.ex02.domain.RealestateAttachVO;
import org.ezen.ex02.domain.RealestateCriteria;
import org.ezen.ex02.domain.RealestatePageDTO;
import org.ezen.ex02.domain.RealestateVO;
import org.ezen.ex02.service.RealestateService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@RequiredArgsConstructor
@RequestMapping("/realestate/*")
@Log4j
public class RealestateController {
	
	private final RealestateService service;
	
	@GetMapping("/list")
	public void list(RealestateCriteria cri, Model model) {
		
		log.info("-----------------------------");
		log.info(cri);
		log.info("list.........");
	
		model.addAttribute("list",service.getList(cri));
		model.addAttribute("pageMaker", new RealestatePageDTO(cri,service.getTotal(cri)));
	}
	
	@GetMapping("register")
	public void registerGET() {
		log.info("register...........");
	}
	
	/*첨부파일 처리*/
	//게시판 등록 작업 처리
	@PostMapping("/register")
	public String register(RealestateVO board, RedirectAttributes rttr) {

		log.info("register: " + board);
			
		if (board.getAttachList() != null) {

			board.getAttachList().forEach(attach -> log.info(attach));

		}

		service.register(board);

		rttr.addFlashAttribute("result", board.getBno());

		return "redirect:list";
		
	}
	
	
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("bno")Long bno, @ModelAttribute("cri") RealestateCriteria cri, Model model) {
		model.addAttribute("board", service.get(bno));
	}
	

	
	@PostMapping("/modify")
	public String modify(RealestateVO board, RealestateCriteria cri, RedirectAttributes rttr) {
		log.info("modify:" + board);

		if (service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		

		return "redirect:list";		
	}
	
	
	//클라이언트에서 특정 게시물에 대한 첨부물 정보 요청
	@PostMapping("/remove")	
	public String remove(@RequestParam("bno") Long bno, Model model,
			RedirectAttributes rttr,@ModelAttribute("cri") RealestateCriteria cri) {

		log.info("remove..." + bno);
			
		List<RealestateAttachVO> attachList = service.getAttachList(bno);

		if (service.remove(bno)) {
				
			deleteFiles(attachList);			
			rttr.addFlashAttribute("result", "success");
		}
			
		return "redirect:list" + cri.getListLink();
	}
	
	//클라이언트에서 특정 게시물에 대한 첨부물 정보 요청
	@GetMapping(value = "/getAttachList", produces = MediaType.APPLICATION_JSON_VALUE)	
	@ResponseBody
	public ResponseEntity<List<RealestateAttachVO>> getAttachList(Long bno) {

		log.info("getAttachList " + bno);

		return new ResponseEntity<>(service.getAttachList(bno), HttpStatus.OK);

	}
		
	private void deleteFiles(List<RealestateAttachVO> attachList) {

		if (attachList == null || attachList.size() == 0) {
			return;
		}

		log.info("delete attach files...................");
		log.info(attachList);

			attachList.forEach(attach -> {
				try {
					Path file = Paths.get(
							"C:/upload/" + attach.getUploadPath() + "/" + attach.getUuid() + "_" + attach.getFileName());

					Files.deleteIfExists(file);

					if (Files.probeContentType(file).startsWith("image")) {

						Path thumbNail = Paths.get("C:/upload/" + attach.getUploadPath() + "/s_" + attach.getUuid() + "_"
								+ attach.getFileName());

						Files.delete(thumbNail);
					}

				} catch (Exception e) {
					log.error("delete file error" + e.getMessage());
				} 
			});
		}
	
	
}