package org.ezen.ex02.mapper;

import java.util.List;

import org.ezen.ex02.domain.RealestateCriteria;
import org.ezen.ex02.domain.RealestateVO;

public interface RealestateMapper {

	//게시글 전체 조회
	// @Select("select * from tbl_board where bno > 0")
		public List<RealestateVO> getList();
		
		void insert(RealestateVO vo);
		
		void insertSelectKey(RealestateVO board);
		
		RealestateVO read(Long bno);
		
		int delete(Long bno);
		
		int update(RealestateVO board);
		
		/*페이징*/
		List<RealestateVO> getListWithPaging(RealestateCriteria cri);
		
		/*총게시물 수*/
		int getTotalCount(RealestateCriteria cri);
	}
