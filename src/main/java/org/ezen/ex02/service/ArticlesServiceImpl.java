package org.ezen.ex02.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.ezen.ex02.domain.ArticleVO;
import org.ezen.ex02.domain.ImageVO;
import org.ezen.ex02.mapper.ArticlesMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@AllArgsConstructor
@Log4j
public class ArticlesServiceImpl implements ArticlesService{

	private ArticlesMapper articlesMapper;
	
	//게시글+파일 작성하기
	@Override
	@Transactional
	public int registerArticles(MultipartFile[] files,ArticleVO article){
		int result = articlesMapper.registerArticles(article);
		
		int articleId = articlesMapper.getLastId();
		StringBuilder filePath = new StringBuilder("images\\common");
		
		String fileFullPath = "C:\\Users\\82104\\Desktop\\spring_ex\\teamproject\\carrotmarket\\src\\main\\webapp\\resources\\" + filePath.toString();
		log.info(fileFullPath);
		
		File uploadPath = new File(fileFullPath,getFolder());
		if(!uploadPath.exists()) {
			uploadPath.mkdirs();
		}
		
		//이미지 파일들 저장하기
		for(MultipartFile file : files) {
			ImageVO imageVO = new ImageVO();

			log.info(file.getOriginalFilename());
			
			StringBuilder sb = new StringBuilder();
			
			UUID uuid = UUID.randomUUID();
			
			sb.append(uuid + "-");
			sb.append(file.getOriginalFilename());
			//new file(경로,파일명);
			
			
			
			File saveFile = new File(uploadPath.getPath(), sb.toString());
			
			
			try {
				file.transferTo(saveFile);
				imageVO.setArticleNo(articleId);
				imageVO.setFileName(sb.toString());
				imageVO.setFilePath(filePath.toString() + "\\" +  getFolder());
				
				articlesMapper.registerImg(imageVO);
				
				
			} catch (Exception e) {
				log.error(e.getMessage());
				new Exception();
			}
	
		}
		return articleId;
	}
	
	
	//게시글 가져오기
	@Override
	public ArticleVO getArticle(int id) {
		ArticleVO articleVO = articlesMapper.getArticle(id);
		return articleVO;
	}
	
	//게시글 이미지 가져오기
	@Override
	public List<ImageVO> getArticleImage(int id) {
		List<ImageVO> list = articlesMapper.getArticleImage(id);
		return list;
	}

	
	//폴더 날짜별로 정리하기
		private String getFolder() {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			Date date = new Date();
			String str = sdf.format(date);
			return str.replace("-", File.separator);
		}
}
