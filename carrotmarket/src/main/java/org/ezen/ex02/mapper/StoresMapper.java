package org.ezen.ex02.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.ezen.ex02.domain.StoresVO;

public interface StoresMapper {
	
	//게시글 전부 불러오기
	public List<StoresVO> getList();

	// bno값으로 게시글 하나 불러오기
	public StoresVO read(Long bno);

	// PK값인 TBL_BOARD테이블의 BNO에 들어가는 seq_board의 nextval값을 미리 알필요 없는 경우
	public void insert(StoresVO board);

	// PK값인 TBL_BOARD테이블의 BNO에 들어가는 seq_board의 nextval값을 미리 알필요 있는 경우
	public Integer insertSelectKey(StoresVO board);

	
	public int modify(StoresVO storesVO);

	// PK값인 BNO를 검색 조건으로 하여 일치하는 하나의 레코드를 삭제하고 삭제한 레코드 개수를 반환
	public int delete(Long bno);

	
	
	
	
	// 페이지관련 Criteria객체를 파라메터로 갖는 메서드
	//public List<BoardVO> getListWithPaging(Criteria cri);

	// 게시글 총 갯수를 반환
	//public int getTotalCount(Criteria cri);

	// 게시판의 댓글 수자 업데이트 amount는 삭제시와 추가시 더하거나 빼줄 숫자 추가시는 1, 삭제는 -1 
	//public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);

	
}
