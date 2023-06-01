package org.ezen.ex02.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.ezen.ex02.domain.MemberImageVO;

@Mapper
public interface MemberImageVOMapper {
	
	public void insert(MemberImageVO vo);

	public void delete(String uuid);

	public MemberImageVO getPfImg(Long id);

}
