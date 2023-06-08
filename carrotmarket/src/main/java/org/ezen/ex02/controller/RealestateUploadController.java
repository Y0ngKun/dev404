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

import org.ezen.ex02.domain.RealestateAttachFileDTO;
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

import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
@RequestMapping("/upload")
@Log4j
public class RealestateUploadController {

	@GetMapping("/uploadForm")
	public void uploadForm() {

		log.info("upload form");
		// views의 upload폴더에 uploadForm.jsp로 이동
	}

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

	@GetMapping("/uploadAjax")
	public void uploadAjax() {

		log.info("upload ajax");
	}
	
	
	private String getFolder() {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		Date date = new Date();

		String str = sdf.format(date); // 날자를 yyyy-MM-dd형식의 문자열로 변환

		return str.replace("-", File.separator); // 파일구분자로 -문자를 변경
	}
	
	 @PostMapping(value="/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_VALUE)
	 @ResponseBody 
	 public ResponseEntity<List<RealestateAttachFileDTO>> uploadAjaxPost(MultipartFile[] uploadFile) {
	 
	  log.info("update ajax post.........");
	  
	  List<RealestateAttachFileDTO> list = new ArrayList<>();
	  
	  String uploadFolder = "C:/upload";
	  String uploadFolderPath = getFolder();
	  
	  File uploadPath = new File(uploadFolder, uploadFolderPath);
	  log.info("upload Path: " + uploadPath);
	  
	  boolean isuploadPath = uploadPath.exists();
	  if(isuploadPath == false) {
		  uploadPath.mkdirs();
	  }
	  
	  for (MultipartFile multipartFile : uploadFile) {
		
		  RealestateAttachFileDTO attachDTO = new RealestateAttachFileDTO();
		  
		  log.info("-------------------------------------");
		  log.info("Upload File Name: " + multipartFile.getOriginalFilename());
		  log.info("Upload File Size: " + multipartFile.getSize());
		  
		  String uploadFileName = multipartFile.getOriginalFilename();
	  
		  System.out.println("파일이름" + uploadFileName );
	  
		  uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
	  
		  log.info("only file name: " + uploadFileName);
	  
		  UUID uuid = UUID.randomUUID();
		  String uuid_uploadFileName = uuid.toString() + "_" + uploadFileName;
		  //uploadFileName = uuid.toString() + "_" + uploadFileName;
	  
		  attachDTO.setFileName(uploadFileName);
		  attachDTO.setUuid(uuid.toString());
		  attachDTO.setUploadPath(uploadFolderPath);
	  
		  //File saveFile = new File(uploadFolder, uploadFileName);
		  //File saveFile = new File(uploadPath, uploadFileName);
	  
		  try {
			  File saveFile = new File(uploadPath, uuid_uploadFileName);
			  multipartFile.transferTo(saveFile); 
		  
			  if(checkImageType(saveFile)) {
				  attachDTO.setImage(true);
				  
				  FileOutputStream thumbnail =new
					  FileOutputStream(new File(uploadPath, "s_" + uuid_uploadFileName));
			  
				  Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100, 100);
				  thumbnail.close();
			  }
			  list.add(attachDTO);
			  
		  } catch(Exception e) {
			  log.error(e.getMessage()); 
		  } 
	  
	  	}
	  	
	  	return new ResponseEntity<>(list, HttpStatus.OK);

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
	 
	 /*썸네일 보여지기*/
	 @GetMapping(value = "/display", produces = MediaType.APPLICATION_JSON_VALUE)
	 @ResponseBody
		public ResponseEntity<byte[]> getFile(String fileName) {

			// 실제 이미지 데이터를 바이크 배열로 보냄(외부 경로에 있는 파일에는 직접 접근이 불가능해서 바이트 배열로 데이터를 보냄)
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

	 /*다운로드*/
	 @GetMapping(value = "/download", produces = MediaType.APPLICATION_OCTET_STREAM_VALUE)
	 @ResponseBody
		public ResponseEntity<Resource> downloadFile(String fileName) {

			log.info("download file: " + fileName);

			Resource resource = new FileSystemResource("c:/upload/" + fileName);

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
	 
	 /*썸네일 삭제*/
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
	 
