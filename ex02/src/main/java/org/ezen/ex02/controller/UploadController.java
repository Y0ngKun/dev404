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

import org.ezen.ex02.domain.AttachFileDTO;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
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
public class UploadController {

	@GetMapping("/uploadForm")
	public void uploadForm() {

		log.info("upload form");
		// views폴더 바로 밑에 uploadForm.jsp로 이동
	}

	@PostMapping("/uploadFormAction")
	public void uploadFormPost(MultipartFile[] uploadFile, Model model) {

		String uploadFolder = "C:/upload";

		for (MultipartFile multipartFile : uploadFile) {
			log.info("-------------------------------------");
			log.info("Upload File Name: " + multipartFile.getOriginalFilename());
			log.info("Upload File Size: " + multipartFile.getSize());

			File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());

			try {
				multipartFile.transferTo(saveFile);
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		}
	}

	@PreAuthorize("isAuthenticated()")
	@GetMapping("/uploadAjax")
	public void uploadAjax() {

		log.info("upload ajax");
	}

	/*
	 * @PostMapping("/uploadAjaxAction") public void uploadAjaxPost(MultipartFile[]
	 * uploadFile) {
	 * 
	 * log.info("update ajax post.........");
	 * 
	 * String uploadFolder = "C:/upload";
	 * 
	 * File uploadPath = new File(uploadFolder, getFolder());
	 * log.info("upload path: " + uploadPath);
	 * 
	 * if (uploadPath.exists() == false) { uploadPath.mkdirs(); //YYYY/MM/DD폴더 만들기 }
	 * 
	 * for (MultipartFile multipartFile : uploadFile) {
	 * log.info("-------------------------------------");
	 * log.info("Upload File Name: " + multipartFile.getOriginalFilename());
	 * log.info("Upload File Size: " + multipartFile.getSize());
	 * 
	 * String uploadFileName = multipartFile.getOriginalFilename(); // IE has file
	 * path uploadFileName =
	 * uploadFileName.substring(uploadFileName.lastIndexOf("/") + 1);
	 * 
	 * log.info("only file name: " + uploadFileName);
	 * 
	 * UUID uuid = UUID.randomUUID();
	 * 
	 * uploadFileName = uuid.toString() + "_" + uploadFileName;
	 * 
	 * //File saveFile = new File(uploadFolder, uploadFileName); File saveFile = new
	 * File(uploadPath, uploadFileName);
	 * 
	 * try {
	 * 
	 * multipartFile.transferTo(saveFile);
	 * 
	 * if (checkImageType(saveFile)) {
	 * 
	 * FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" +
	 * uploadFileName)); //uploadFileName의 파일을 대상으로 하는 출력 스트림
	 * 
	 * Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100,
	 * 100); //thumbnail 출력 파일을 대상으로 하는 입력스트림의 데이터로 thumbnail이미지를 크기 100,100으로 만듬
	 * 
	 * thumbnail.close(); } } catch (Exception e) { log.error(e.getMessage()); } } }
	 */
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping(value = "/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ResponseEntity<List<AttachFileDTO>> uploadAjaxPost(MultipartFile[] uploadFile) {

		List<AttachFileDTO> list = new ArrayList<>();
		String uploadFolder = "C:/upload";

		String uploadFolderPath = getFolder();
		// make folder --------
		File uploadPath = new File(uploadFolder, uploadFolderPath);

		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		// make yyyy/MM/dd folder

		for (MultipartFile multipartFile : uploadFile) {

			AttachFileDTO attachDTO = new AttachFileDTO();

			String uploadFileName = multipartFile.getOriginalFilename();

			// IE has file path
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("/") + 1);
			log.info("only file name: " + uploadFileName);
			attachDTO.setFileName(uploadFileName);

			UUID uuid = UUID.randomUUID();

			uploadFileName = uuid.toString() + "_" + uploadFileName;

			try {
				File saveFile = new File(uploadPath, uploadFileName);
				multipartFile.transferTo(saveFile);

				attachDTO.setUuid(uuid.toString());
				attachDTO.setUploadPath(uploadFolderPath);

				// check image type file
				if (checkImageType(saveFile)) {

					attachDTO.setImage(true);

					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadFileName));

					Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100, 100);

					thumbnail.close();
				}

				// add to List
				list.add(attachDTO);

			} catch (Exception e) {
				e.printStackTrace();
			}

		} // end for
		return new ResponseEntity<>(list, HttpStatus.OK);
	}

	private String getFolder() {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		Date date = new Date();

		String str = sdf.format(date);

		return str.replace("-", File.separator);
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
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping(value = "/deleteFile", produces = MediaType.APPLICATION_JSON_VALUE)	
	@ResponseBody
	public ResponseEntity<String> deleteFile(String fileName, String type) {

		log.info("deleteFile: " + fileName);

		File file = null;

		try {
			file = new File("c:/upload/" + URLDecoder.decode(fileName, "UTF-8"));
			//file = new File("c:/upload/" + fileName);

			file.delete();

			if (type.equals("image")) {

				String largeFileName = file.getAbsolutePath().replace("s_", "");

				log.info("largeFileName: " + largeFileName);

				file = new File(largeFileName);

				file.delete();
			}

		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		}

		return new ResponseEntity<String>("deleted", HttpStatus.OK);

	}

}
