package com.company.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.company.domain.BoardVO;

public interface BoardMapper {
//	@Select("select * from tbl_board where bno > 0")//데이터가 없으면 출력X
	public List<BoardVO> getList();
	
	public void insert(BoardVO board);

	public void insertSelectKey(BoardVO board);
	
	public BoardVO read(Long bno);
	
	public int delete(Long bno);
	
	public int update(BoardVO board);

}
