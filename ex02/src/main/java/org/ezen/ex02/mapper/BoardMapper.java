package org.ezen.ex02.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.ezen.ex02.domain.BoardVO;
import org.ezen.ex02.domain.Criteria;

public interface BoardMapper {
	
	//mybatis의 @select어노테이션으로 처리
	//@Select("select * from tbl_board where bno > 0")
	public List<BoardVO> getList();
	
	//페이지관련 Criteria객체를 파라메터로 갖는 메서드 
	public List<BoardVO> getListWithPaging(Criteria cri);
	
	//PK값인 TBL_BOARD테이블의 BNO에 들어가는 seq_board의 nextval값을 미리 알필요 없는 경우
	public void insert(BoardVO board);
	
	//PK값인 TBL_BOARD테이블의 BNO에 들어가는 seq_board의 nextval값을 미리 알필요 있는  경우
	public Integer insertSelectKey(BoardVO board);
	
	//PK값인 BNO를 검색 조건으로 하여 일치하는 하나의 레코드를 매핑되는 BoardVO객체로 반환
	public BoardVO read(Long bno);
	
	//PK값인 BNO를 검색 조건으로 하여 일치하는 하나의 레코드를 삭제하고 삭제한 레코드 개수를 반환
	public int delete(Long bno);
	
	//클라이언트에서 수정한 내용을 BoardVO로 수집하여 파라메터로 사용
	public int update(BoardVO board);
	
	//게시글 총 갯수를 반환
	public int getTotalCount(Criteria cri);
	
	//게시판의 댓글 수자 업데이트
	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
	
	
}
