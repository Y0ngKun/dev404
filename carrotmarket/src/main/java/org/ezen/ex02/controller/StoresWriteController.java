package org.ezen.ex02.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.ezen.ex02.domain.StoresImageDTO;
import org.ezen.ex02.domain.StoresVO;
import org.ezen.ex02.service.StoresService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Log4j
@Controller
@RequestMapping("/storesWrite")
@AllArgsConstructor
public class StoresWriteController {
	
	
	@Autowired
	private StoresService service;
	
	
	
	@GetMapping()
	public String storesWriteUp() {

		log.info("스토어 글쓰기 페이지 진입");
		
		return "stores/storesWrite";
	}
	
	//게시판 등록 작업 처리
	@PostMapping()
	public String register(StoresVO board, RedirectAttributes rttr) {

		log.info("register: " + board);
		
		if (board.getAttachList() != null) {

			board.getAttachList().forEach(attach -> log.info(attach));

		}

		service.register(board);

		rttr.addFlashAttribute("result", board.getBno());

		return "redirect:/stores/stores";
	}
	
	
	
	//비즈프로필 글쓰기시 파일 첨부 부분 시작
	
	/*
	@PostMapping("/uploadFormAction")
	public void uploadFormPost(MultipartFile[] uploadFile, Model model) {
		// servlet제공 업로드는 MultipartFile클래스 객체로 처리,multiple이므로 배열, 파라메터 이름은 form의 name속성
		// 다를때는 @RequestParam사용

		String uploadFolder = "C:/upload";

		for (MultipartFile multipartFile : uploadFile) {
			log.info("-------------------------------------");
			log.info("Upload File Name: " + multipartFile.getOriginalFilename()); // 파일 이름
			log.info("Upload File Size: " + multipartFile.getSize()); // 파일 크기

			File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());
			// 경로와 파일이름을 사용하는 File객체 생성

			try {
				multipartFile.transferTo(saveFile); // 해당 경로에 file객체 저장
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		}
	}
	*/
	
	
	/*
	@GetMapping("/uploadAjax")
	public void uploadAjax() {

		log.info("upload ajax");
	}
	*/

	/*
	 * @PostMapping("/uploadAjaxAction")
	 * 
	 * @ResponseBody public String uploadAjaxPost(MultipartFile[] uploadFile) {
	 * 
	 * log.info("update ajax post.........");
	 * 
	 * String uploadFolder = "C:/upload";
	 * 
	 * for (MultipartFile multipartFile : uploadFile) {
	 * log.info("-------------------------------------");
	 * log.info("Upload File Name: " + multipartFile.getOriginalFilename());
	 * log.info("Upload File Size: " + multipartFile.getSize());
	 * 
	 * String uploadFileName = multipartFile.getOriginalFilename();
	 * 
	 * System.out.println("파일이름" + uploadFileName );
	 * 
	 * uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("/") +
	 * 1);
	 * 
	 * log.info("only file name: " + uploadFileName);
	 * 
	 * File saveFile = new File(uploadFolder, uploadFileName);
	 * 
	 * try { multipartFile.transferTo(saveFile); } catch(Exception e) {
	 * log.error(e.getMessage()); } } return "success"; }
	 */

	/*
	 * @PostMapping("/uploadAjaxAction")
	 * 
	 * @ResponseBody public String uploadAjaxPost(MultipartFile[] uploadFile) {
	 * 
	 * log.info("update ajax post.........");
	 * 
	 * String uploadFolder = "C:/upload";
	 * 
	 * //날짜별로된 폴더를 이용한 경로 File uploadPath = new File(uploadFolder, getFolder());
	 * 
	 * if (uploadPath.exists() == false) { uploadPath.mkdirs(); //File객체의 경로를 이용하여
	 * 폴더로 만듬 }
	 * 
	 * for (MultipartFile multipartFile : uploadFile) {
	 * log.info("-------------------------------------");
	 * log.info("Upload File Name: " + multipartFile.getOriginalFilename());
	 * log.info("Upload File Size: " + multipartFile.getSize());
	 * 
	 * String uploadFileName = multipartFile.getOriginalFilename();
	 * 
	 * System.out.println("파일이름" + uploadFileName );
	 * 
	 * //순수 파일 이름 uploadFileName =
	 * uploadFileName.substring(uploadFileName.lastIndexOf("/") + 1);
	 * 
	 * log.info("only file name: " + uploadFileName);
	 * 
	 * UUID uuid = UUID.randomUUID(); //임의의 UUID객체 만들기 uploadFileName =
	 * uuid.toString() + "_" + uploadFileName;
	 * 
	 * //File saveFile = new File(uploadFolder, uploadFileName); File saveFile = new
	 * File(uploadPath, uploadFileName); //날짜 형식 경로
	 * 
	 * try { multipartFile.transferTo(saveFile); //원본 파일 저장 } catch(Exception e) {
	 * log.error(e.getMessage()); } } return "success"; }
	 */

	// 섬네일 만들기
	/*
	 * @PostMapping("/uploadAjaxAction")
	 * 
	 * @ResponseBody public String uploadAjaxPost(MultipartFile[] uploadFile) {
	 * 
	 * log.info("update ajax post.........");
	 * 
	 * String uploadFolder = "C:/upload";
	 * 
	 * //날짜별로된 폴더를 이용한 경로 File uploadPath = new File(uploadFolder, getFolder());
	 * 
	 * if (uploadPath.exists() == false) { uploadPath.mkdirs(); //File객체의 경로를 이용하여
	 * 폴더로 만듬 }
	 * 
	 * for (MultipartFile multipartFile : uploadFile) {
	 * log.info("-------------------------------------");
	 * log.info("Upload File Name: " + multipartFile.getOriginalFilename());
	 * log.info("Upload File Size: " + multipartFile.getSize());
	 * 
	 * String uploadFileName = multipartFile.getOriginalFilename();
	 * 
	 * System.out.println("파일이름" + uploadFileName );
	 * 
	 * //순수 파일 이름 uploadFileName =
	 * uploadFileName.substring(uploadFileName.lastIndexOf("/") + 1);
	 * 
	 * log.info("only file name: " + uploadFileName);
	 * 
	 * UUID uuid = UUID.randomUUID(); //임의의 UUID객체 만들기 uploadFileName =
	 * uuid.toString() + "_" + uploadFileName;
	 * 
	 * //File saveFile = new File(uploadFolder, uploadFileName); File saveFile = new
	 * File(uploadPath, uploadFileName); //날짜 형식 경로
	 * 
	 * try { multipartFile.transferTo(saveFile); //원본 파일 저장
	 * 
	 * //이미지 파일인지 체크 if (checkImageType(saveFile)) { FileOutputStream thumbnail =
	 * new FileOutputStream(new File(uploadPath, "s_" + uploadFileName)); //섬네일 이름의
	 * 출력 스트림을 만듬 Thumbnailator.createThumbnail(multipartFile.getInputStream(),
	 * thumbnail, 100,100); //출력스트림에 저장된 thumbnail부터 읽어와 크기 100 x 100의 섬네일 파일 생성
	 * thumbnail.close(); } } catch(Exception e) { log.error(e.getMessage()); } }
	 * return "success"; }
	 */

	
	
	
	
	// 브라우져에서 업로드 결과를 보여주기 위해 JSON으로 첨부파일 관련 객체(AttachFileDTO) 보내기
	@PostMapping(value = "/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<List<StoresImageDTO>> uploadAjaxPost(MultipartFile[] uploadFile) {
		
		
		
		log.info("파일첨부 ajax 메소드 확인");
		

		List<StoresImageDTO> list = new ArrayList<>();

		String uploadFolder = "C:/upload";

		String uploadFolderPath = getFolder();
		// 날짜별로된 폴더를 이용한 경로
		File uploadPath = new File(uploadFolder, uploadFolderPath);

		if (uploadPath.exists() == false) {
			uploadPath.mkdirs(); // File객체의 경로를 이용하여 폴더로 만듬
		}

		for (MultipartFile multipartFile : uploadFile) {
			
			

			StoresImageDTO attachDTO = new StoresImageDTO();

			String uploadFileName = multipartFile.getOriginalFilename();


			
			
			// 순수 파일 이름
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("/") + 1);

			log.info("only file name: " + uploadFileName);

			attachDTO.setFileName(uploadFileName);

			UUID uuid = UUID.randomUUID();
			// 임의의 UUID객체 만들기
			uploadFileName = uuid.toString() + "_" + uploadFileName;

			// File saveFile = new File(uploadFolder, uploadFileName);
			File saveFile = new File(uploadPath, uploadFileName); // 날짜 형식 경로

			try {
				multipartFile.transferTo(saveFile); // 원본 파일 저장

				attachDTO.setUuid(uuid.toString());
				attachDTO.setUploadPath(uploadFolderPath);

				// 이미지 파일인지 체크
				if (checkImageType(saveFile)) {

					attachDTO.setImage(true);

					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadFileName));
					// 섬네일 이름의 출력 스트림을 만듬
					Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100, 100);
					// 출력스트림에 저장된 thumbnail부터 읽어와 크기 100 x 100의 섬네일 파일 생성
					thumbnail.close();
				}

				list.add(attachDTO);
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		}

		return new ResponseEntity<>(list, HttpStatus.OK);
	}
	
	
	

	private String getFolder() {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		Date date = new Date();

		String str = sdf.format(date); // 날자를 yyyy-MM-dd형식의 문자열로 변환

		return str.replace("-", File.separator); // 파일구분자로 -문자를 변경
	}

	private boolean checkImageType(File file) {

		try {
			String contentType = Files.probeContentType(file.toPath());
			// Path객체를 이용하여 파일의 content형식을 반환

			return contentType.startsWith("image");
			// image일시 true반환

		} catch (IOException e) {
			e.printStackTrace();
		}

		return false;
	}
	
	
	
	
	
	
	
	
	

	

	@GetMapping(value = "/display", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<byte[]> getFile(String fileName) {

		// 실제 이미지 데이터를 바이트 배열로 보냄(외부 경로에 있는 파일에는 직접 접근이 불가능해서 바이트 배열로 데이터를 보냄)
		// fileName은 전체 경로 보냄(YYYY/MM/DD/S_UUID/이름
		log.info("fileName: " + fileName);

		File file = new File("c:/upload/" + fileName);

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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	@GetMapping(value = "/download", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
	@ResponseBody
	public ResponseEntity<Resource> downloadFile(String fileName) {

		log.info("download file: " + fileName);

		Resource resource = new FileSystemResource("c:/upload/" + fileName);

		if (resource.exists() == false) {
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}

		log.info("resource: " + resource);

		String resourceName = resource.getFilename();

		// remove UUID
		String resourceOriginalName = resourceName.substring(resourceName.indexOf("_") + 1);

		HttpHeaders headers = new HttpHeaders();

		try {

			String downloadName = null;

			downloadName = new String(resourceOriginalName.getBytes("UTF-8"), "ISO-8859-1");

			// headers.add("Content-Disposition,attachment; filename=" + new
			// String(resourceName.getBytes("UTF-8"), "ISO-8859-1"));
			// UTF-8로된 문자열을 바이트배열로 변경후 ISO-8859-1로 인코딩된 문자열로 변경,파일이름을 지정

			headers.add("Content-Disposition", "attachment; filename=" + downloadName);

		} catch (UnsupportedEncodingException e) {

			e.printStackTrace();
		}

		return new ResponseEntity<Resource>(resource, headers, HttpStatus.OK);

	}

	
	
	
	
	
	
	
	

	
	
	
	
	
	
	@PostMapping(value = "/deleteFile", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<String> deleteFile(String fileName, String type) {
		//ajax로 객체형으로 보낸 데이터는 객체 속성명으로 받으면 됨
		log.info("deleteFile: " + fileName);

		File file = null;

		try {
			file = new File("c:/upload/" + URLDecoder.decode(fileName, "UTF-8"));
			// file = new File("c:/upload/" + fileName);

			file.delete(); //thumbnail이나 일반 파일 지움

			if (type.equals("image")) {

				String largeFileName = file.getAbsolutePath().replace("s_", "");

				log.info("largeFileName: " + largeFileName);

				file = new File(largeFileName);

				file.delete(); //원본 파일 삭제
			}

		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}

		return new ResponseEntity<String>("deleted", HttpStatus.OK);

	}


}
