package org.ezen.ex02.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.ezen.ex02.domain.CarCriteria;
import org.ezen.ex02.domain.CarVO;

public interface CarMapper {

	//리스트 가져올 메서드
	public List<CarVO> getList();
	
	//페이징 관련 메서드, Criteria객체를 파라미터로 갖는 메서드
	public List<CarVO> getListWithPaging(CarCriteria cri);
	
	//C
	public void insert(CarVO car);
	/* carrot_car 테이블 cno 컬럼에 들어가는 car_seq의
	nextval(시퀀스를 이용하여 자동으로 증가하는 값)을 미리 알 필요가 없는
	경우 처리 하는 방법, insert(Create)만 처리
	 */
	
	public Integer insertSelectKey(CarVO car);
	/* carrot_car 테이블 cno 컬럼에 들어가는 car_seq의
	nextval(시퀀스를 이용하여 자동으로 증가하는 값)을 미리 알아야 하는
	경우 처리 하는 방법, car 객체의 데이터가 DB에 삽입되고, 삽입된 데이터의
	키 값을 Integer 타입으로 반환해주고, 
	새로운 레코드를 삽입 후 해당 키값을 반환 한다.
	 */
	
	//R
	public CarVO read(Long cno);
	
	//U
	public int update(CarVO car);
	//클라이언트에서 수정한 내용을 CarVO로 수집하여 파라미터로 사용한다.
	
	//D
	public int delete(Long cno);
	
	//페이징 관련 메서드, 게시글 총 갯수를 반환
	public int getTotalCount(CarCriteria cri);
	
	//게시판 댓글 숫자 업데이트 메서드
	public void updateReplyCnt(@Param("cno") Long cno, @Param("amount") int amount);
	
}
