package com.company.mapper;

import com.company.domain.ReplyVO;

public interface ReplyMapper {
	public int insert(ReplyVO vo);
	public ReplyVO read(Long rno);
	public int delete(Long rno);
	
	//reply, update만 수정가능
	public int update(ReplyVO reply);
	

}
