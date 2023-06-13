package org.ezen.ex02.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ezen.ex02.domain.CarCriteria;
import org.ezen.ex02.domain.CarReplyVO;

public interface CarReplyMapper {

	//댓글 작성
	public int insert(CarReplyVO vo);
	
	//댓글 조회
	public CarReplyVO read(Long rno);
	
	//댓글 수정
	public int update(CarReplyVO reply);
	
	//댓글 삭제
	public int delete(Long rno);
	
	//댓글 전부 삭제
	public int deleteAll(Long cno);
	
	//페이징 처리를 한 댓글 list
	//@Param은 2개 이상의 파라미터를 사용할때 쓴다. cri라는 이름으로 Criteria cri 객체를 전달해준다.
	public List<CarReplyVO> getListWithPaging(@Param("cri") CarCriteria cri, @Param("cno") Long cno);
	
	//댓글 페이징 처리를 위한 댓글 갯수
	public int getCountByCno(Long cno);
	
}
