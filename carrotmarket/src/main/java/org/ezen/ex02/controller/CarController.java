package org.ezen.ex02.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.ezen.ex02.domain.CarAttachVO;
import org.ezen.ex02.domain.CarCriteria;
import org.ezen.ex02.domain.CarPageDTO;
import org.ezen.ex02.domain.CarVO;
import org.ezen.ex02.service.CarService;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller //컨트롤러 클래스로서 스프링 빈으로 등록한다.
@Log4j //log를 출력하기 위해 사용
@RequestMapping("/car") //받은 요청을 해당 메서드로 연결하며 클래스로 지정할시에는 공통 경로가 된다.
@AllArgsConstructor //lombok의 모든 멤버변수를 파라미터로 갖는 생성자를 생성해준다, 멤버변수가 하나일때 사용한다.
public class CarController {
	private CarService service; //CarService 인터페이스를 구현한 구현체를 주입받는 멤버 변수
	
	//페이징 처리 후 - list(R)
	@GetMapping("/list_car")
	public void list(CarCriteria cri, Model model) {
		log.info("list_car");
		log.info(cri);
		log.info(service.getList(cri));
		model.addAttribute("list_car", service.getList(cri));
		
		//실제 게시글의 개수
		int total = service.getTotal(cri);
		log.info("total : " + total);
		
		model.addAttribute("pageMaker", new CarPageDTO(cri, total));
	}
	
	//게시글 등록창 보기
	@GetMapping("/register_car")
	public void registerForm() {
		log.info("registerForm : ");
	}
	
	//게시글 등록 처리 - 첨부파일 처리 후
	@PostMapping("/register_car")
	public String register(CarVO car, RedirectAttributes rttr) {
			
		log.info("register : " + car);
		
		if(car.getAttachList() != null) {
			car.getAttachList().forEach(attach -> log.info(attach));
		}
			
		service.register(car);
			
		rttr.addFlashAttribute("result", car.getCno());
			
		return "redirect:list_car";
		}
	
	@GetMapping({"/get_car", "/modify_car"})
	public void get(@RequestParam("cno") Long cno, @ModelAttribute("cri") CarCriteria cri, Model model) {
		log.info("get_car & modify");
		
		model.addAttribute("car", service.get(cno));
	}
	
	// 첨부파일, 페이징 처리 후
	@PostMapping("/modify_car")
	public String modify(CarVO car, CarCriteria cri, RedirectAttributes rttr) {
		
		log.info("modify_car" + car);
		
		if(service.modify(car)) {
			
			rttr.addFlashAttribute("result", "success");
		}
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:list_car";
	}
	
	// 페이징, 첨부파일 처리 후
	@PostMapping("/remove_car")
	public String remove(@RequestParam("cno") Long cno, CarCriteria cri, RedirectAttributes rttr ) {
		
		log.info("remove_car : " + cno);
		
		List<CarAttachVO> attachList = service.getAttachList(cno);
		
		if(service.remove(cno)) {
			
			//폴더에 있는 파일들을 삭제 한다.
			deleteFiles(attachList);
			
			rttr.addFlashAttribute("result", "success");
		}
		
		rttr.addFlashAttribute("pageNum" + cri.getPageNum());
		rttr.addFlashAttribute("amount" + cri.getAmount());
		
		return "redirect:list_car";
	}
	
	//클라이언트에서 특정 게시물에 대한 첨부파일 정보를 요청하는 메서드
	@GetMapping(value = "/getAttachList", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<List<CarAttachVO>> getAttachList(Long cno) {
		log.info("getAttachList : " + cno);
		log.info(service.getAttachList(cno));
		return new ResponseEntity<>(service.getAttachList(cno), HttpStatus.OK);
	}

	@GetMapping(value = "/display/{cno}", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<byte[]> getImage(@PathVariable("cno") Long cno) {
		
		CarAttachVO attach = service.getImage(cno);
		
		// 실제 이미지 데이터를 바이트 배열로 보냄(외부 경로에 있는 파일에는 직접 접근이 불가능해서 바이트 배열로 데이터를 보냄)
		// fileName은 전체 경로 보냄(YYYY/MM/DD/S_UUID/이름
		log.info("fileName: " + attach);

		File file = new File("c:/upload/" + attach.getUploadPath() + "\\s_" + attach.getUuid()+"_" + attach.getFileName());
		log.info("file: " + file);

		ResponseEntity<byte[]> result = null;

		try {
			HttpHeaders header = new HttpHeaders();

			header.add("Content-Type", Files.probeContentType(file.toPath()));
			// header에 Content-Type에 MIME추가

			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			// file객체를 byte배열로 변환하여 JSON으로 반환

		} catch (IOException e) {

			e.printStackTrace();
		}
		return result;
	}
	
	//첨부파일을 삭제하는 메서드
	private void deleteFiles(List<CarAttachVO> attachList) {
		
		if(attachList == null || attachList.size() == 0) {
			return;		
		}
		log.info("delete attach files...");
		log.info(attachList);
		
		attachList.forEach(attach -> {
			try {
				Path file = Paths.get(
						"c:/upload/" + attach.getUploadPath() + "/" + attach.getUuid() + "_" + attach.getFileName());
				
				Files.deleteIfExists(file);
				
				if(Files.probeContentType(file).startsWith("image")) {
					
					Path thumbNail = Paths.get("c:/uplaod/" + attach.getUploadPath() + "/s_" + attach.getUuid() + "_"
							+ attach.getFileName());
					
					Files.delete(thumbNail);
				}
			
			} catch (Exception e) {
				log.error("delete file error" + e.getMessage());
			}
		});
	}
}