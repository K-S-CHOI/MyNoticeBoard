package com.kschoi.mapper;

import java.util.List;

import com.kschoi.domain.BoardVO;

public interface BoardMapper {

	public List<BoardVO> getList();
	
	public BoardVO read(Long board_number);
	
	public int insert(BoardVO vo);
	
	public void insertSelectKey(BoardVO vo);
	
	public int delete(Long board_number);
	
	public void update(Long board_number);
}
