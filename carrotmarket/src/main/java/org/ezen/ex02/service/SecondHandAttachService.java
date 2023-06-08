package org.ezen.ex02.service;

import java.util.List;

import org.ezen.ex02.domain.SecondHandAttachVO;
import org.springframework.web.multipart.MultipartFile;

public interface SecondHandAttachService {

	List<SecondHandAttachVO> getArticleImage(int articleNo);

	void deleteArticleFile(SecondHandAttachVO attachVO);

	void deleteArticleAllImage(int id);

	void insertImg(MultipartFile[] files, int articleNo);

	void deleteArticleImageDB(String fileName);
}
