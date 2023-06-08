package org.ezen.ex02.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.ezen.ex02.domain.SecondHandAttachVO;
import org.ezen.ex02.mapper.SecondHandAttachMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import net.coobird.thumbnailator.Thumbnailator;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class SecondHandAttachServiceImpl implements SecondHandAttachService{
	
	@Setter(onMethod_=@Autowired)
	private SecondHandAttachMapper secondHandAttachMapper;
	
	//게시글 이미지 정보 가져오기
	@Override
	public List<SecondHandAttachVO> getArticleImage(int id) {
		List<SecondHandAttachVO> list = secondHandAttachMapper.getArticleImage(id);
		return list;
	}
	//파일 저장하기, db에 넣기
	@Override
	public void insertImg(MultipartFile[] files,int articleNo) {
		StringBuilder filePath = new StringBuilder("images");
		//System.getProperty("user.dir") 가 이상하게 작동해서 일단 절대경로로 설정
		String fileFullPath = "C:\\upload\\";
		
		File uploadPath = new File(new StringBuilder().append(fileFullPath).append(filePath).toString(),getFolder());
		
		if(!uploadPath.exists()) {
			uploadPath.mkdirs();
		}
		//이미지 파일들 저장하기
		for(int a = 0; a<files.length; a++) {
			//빈파일 체크 후 빈 파일이면 파일저장없이 return
			if(files[a].isEmpty()) {
				return;
			}
			SecondHandAttachVO imageVO = new SecondHandAttachVO();
			StringBuilder sb = new StringBuilder();
			UUID uuid = UUID.randomUUID();
			
			sb.append(uuid + "-");
			sb.append(files[a].getOriginalFilename());
			//new file(경로,파일명);
			File saveFile = new File(uploadPath.getPath(), sb.toString());
			
			try {
				FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath.getPath(), "s_" + sb.toString()));
				
				Thumbnailator.createThumbnail(files[a].getInputStream(), thumbnail, 250, 250);
				// 출력스트림에 저장된 thumbnail부터 읽어와 크기 100 x 100의 섬네일 파일 생성
				thumbnail.close();
				files[a].transferTo(saveFile);
				
				imageVO.setArticleNo(articleNo);
				imageVO.setFileName(sb.toString());
				imageVO.setFilePath(filePath.toString() + "\\" +  getFolder() + "\\");
				
				secondHandAttachMapper.registerImg(imageVO);
			} catch (Exception e) {
				log.error(e.getMessage());
				new Exception();
			}
		}
	}

	//실제파일 삭제하기
	@Override
	public void deleteArticleFile(SecondHandAttachVO attachVO) {
		StringBuilder fileFullPath = new StringBuilder("C:\\Users\\82104\\Desktop\\spring_ex\\teamproject\\carrotmarket\\src\\main\\webapp\\resources\\");
	
		Path file = Paths.get(fileFullPath.toString() + attachVO.getFilePath() + attachVO.getFileName());
		Path thumbnail = Paths.get(fileFullPath.toString() + attachVO.getFilePath() + "\\s_"+attachVO.getFileName());
		log.info(file);
		try {
			Files.deleteIfExists(file);
			Files.deleteIfExists(thumbnail);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//모든파일 db에서 지우기
	@Override
	public void deleteArticleAllImage(int id) {
		secondHandAttachMapper.deleteArticleAllImage(id);
	}
	
	//삭제파일 db에서 지우기
	public void deleteArticleImageDB(String fileName) {
		secondHandAttachMapper.deleteArticleImageDB(fileName);
	}
	
	//폴더 날짜별로 정리하기
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date();
		String str = sdf.format(date);
		return str.replace("-", File.separator);
	}
}
