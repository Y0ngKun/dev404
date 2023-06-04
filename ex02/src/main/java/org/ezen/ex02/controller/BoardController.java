package org.ezen.ex02.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.ezen.ex02.domain.BoardAttachVO;
import org.ezen.ex02.domain.BoardVO;
import org.ezen.ex02.domain.Criteria;
import org.ezen.ex02.domain.PageDTO;
import org.ezen.ex02.service.BoardService;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller // 콘트롤라클래스로 스프링 빈으로 등록
@Log4j
@RequestMapping("/board")
//요청을 해당 메서드로 연결하나 클래스에 지정시는 공통 경로
@AllArgsConstructor
//Lombok의 모든 멤버변수를 파라메터로 갖는 생성자를 생성
//멤버변수가 하나이므로 파라메터 하나인 생성자
public class BoardController {
	private BoardService service;
	// 서비스의 메서드를 사용하기 위해서 주입받기 위한 멤버변수
	// 멤버변수가 하나인 생성자가 존재시 자동 주입되어 @Autowired생략(스프링 4.3부터)

	/*
	 * @GetMapping("/list") public void list(Model model) { log.info("list");
	 * model.addAttribute("list", service.getList()); // return type이 void이면
	 * mapping의 url과 동일한 이름의 jsp(list.jsp) }
	 */

	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		// cri를 자동 수집하므로 값이 없을시는 기본형 생성자가 설정하는 값으로 수집
		log.info("list: " + cri);
		model.addAttribute("list", service.getList(cri));
		// model.addAttribute("pageMaker", new PageDTO(cri, 123));
		// 123은 총게시글수인 total 인데 아직은 123으로 임시 처리

		// 실제 게시글 갯수
		int total = service.getTotal(cri);
		log.info("total: " + total);

		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}

	@GetMapping("/register")
	@PreAuthorize("isAuthenticated()")
	public void register() {
		log.info("----registerForm");
		// return은 register.jsp
	}
	/*
	 * @PostMapping("/register") public String register(BoardVO board,
	 * RedirectAttributes rttr) {
	 * 
	 * log.info("register: " + board);
	 * 
	 * service.register(board);
	 * 
	 * rttr.addFlashAttribute("result", board.getBno()); // 1회용 데이터 처리
	 * 
	 * return "redirect:list"; // sendRedirect()로 브라우져에서 전달하는 경로로 요청 // return값이
	 * redirect:나 jsp페이지 이름일시는 반환형이 String }
	 */

	@PostMapping("/register")
	@PreAuthorize("isAuthenticated()")
	public String register(BoardVO board, RedirectAttributes rttr) {

		log.info("==========================");

		// log.info("register: " + board);

		if (board.getAttachList() != null) {

			board.getAttachList().forEach(attach -> log.info(attach));

		}

		log.info("==========================");

		service.register(board);

		rttr.addFlashAttribute("result", board.getBno());

		return "redirect:list";
	}
	/*
	 * 페이지를 고려 하지 않은 get
	 * 
	 * @GetMapping({"/get","/modify"}) //요청의 파라메터도 동일하고 Model에 실어주는 데이터도 동일시는 배열 형태로
	 * Mapping public void get(@RequestParam("bno") Long bno, Model model) {
	 * log.info("get"); model.addAttribute("board", service.get(bno)); }
	 */

	// 리스트장에서 조회창으로 이동시 페이비 번호 유지를 위해 cri객체를 사용하고 강제로 Model에 포함
	@GetMapping({ "/get", "/modify" })
	public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, Model model) {
		// bean규칙의 DTO객체는 자동 model에 포함
		// @ModelAttribute("cri")는 model에 cri속성으로 cri객체를 강제로 저장
		// 기본형을 Model에 포함시킬때
		log.info("/get or modify");
		model.addAttribute("board", service.get(bno));
	}

	/*
	 * 페이지를 고려 하지 않은 경우
	 * 
	 * @PostMapping("/modify") public String modify(BoardVO board,
	 * RedirectAttributes rttr) { log.info("modify:" + board); if
	 * (service.modify(board)) { rttr.addFlashAttribute("result", "success"); }
	 * return "redirect:list"; // return값이 redirect:나 jsp페이지 이름일시는 반환형이 String }
	 */

	// 페이지 정보 고려
	/*
	@PostMapping("/modify")
	public String modify(BoardVO board, Criteria cri, RedirectAttributes rttr) {
		log.info("modify:" + board);

		if (service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		// list로 검색조건을 넘김
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());

		return "redirect:list";
	}
	*/
	
	//시큐리티 적용
	@PostMapping("/modify")
	@PreAuthorize("principal.username == #board.writer")
	public String modify(BoardVO board, Criteria cri, RedirectAttributes rttr) {
		log.info("modify:" + board);
		
		if (service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		//rttr.addAttribute("pageNum", cri.getPageNum());
		//rttr.addAttribute("amount", cri.getAmount());
		// list로 검색조건을 넘김
        //rttr.addAttribute("type", cri.getType());
        //rttr.addAttribute("keyword", cri.getKeyword());

		//return "redirect:list";
		
		return "redirect:list" + cri.getListLink();
	}

	/*
	 * 페이지 정보 미고려
	 * 
	 * @PostMapping("/remove") public String remove(@RequestParam("bno") Long bno,
	 * RedirectAttributes rttr) {
	 * 
	 * log.info("remove..." + bno); if (service.remove(bno)) {
	 * rttr.addFlashAttribute("result", "success"); } return "redirect:list"; }
	 */

	// 페이지 정보 고려
	/*
	 * @PostMapping("/remove") public String remove(@RequestParam("bno") Long bno,
	 * Criteria cri, RedirectAttributes rttr) {
	 * 
	 * log.info("remove..." + bno);
	 * 
	 * if (service.remove(bno)) { rttr.addFlashAttribute("result", "success"); }
	 * 
	 * // rttr.addAttribute("pageNum", cri.getPageNum());
	 * rttr.addAttribute("amount", // cri.getAmount()); //list로 검색조건을 넘김
	 * rttr.addAttribute("type", cri.getType()); // rttr.addAttribute("keyword",
	 * cri.getKeyword());
	 * 
	 * System.out.println("쿼리스트링 : " + cri.getListLink()); 
	 * return "redirect:list" + cri.getListLink(); // query문자열 이므로 ?을 붙일 필요 없다,한글깨짐 염려 필요 없음 }
	 */
	// 첨부물 삭제 포함
	/*
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, Criteria cri, RedirectAttributes rttr) {

		log.info("remove..." + bno);

		List<BoardAttachVO> attachList = service.getAttachList(bno);

		if (service.remove(bno)) {

			// delete Attach Files
			deleteFiles(attachList);

			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:list" + cri.getListLink();
	}
	*/
	//시큐리티 적용
	@PreAuthorize("principal.username == #writer")
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, Criteria cri, RedirectAttributes rttr,String writer) {

		log.info("remove..." + bno);

		List<BoardAttachVO> attachList = service.getAttachList(bno);

		if (service.remove(bno)) {

			// delete Attach Files
			deleteFiles(attachList);

			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:list" + cri.getListLink();
	}
	
	@GetMapping(value = "/getAttachList", produces = MediaType.APPLICATION_JSON_VALUE)	
	@ResponseBody
	public ResponseEntity<List<BoardAttachVO>> getAttachList(Long bno) {

		log.info("getAttachList " + bno);

		return new ResponseEntity<>(service.getAttachList(bno), HttpStatus.OK);

	}

	private void deleteFiles(List<BoardAttachVO> attachList) {

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
			} // end catch
		});// end foreachd
	}

}
