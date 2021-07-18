package com.kschoi.service;

import java.util.List;

import com.kschoi.domain.BoardVO;

public interface BoardService {

	public void write(BoardVO vo);
	
	public BoardVO read(Long board_number);
	
	public List<BoardVO> load_page();
	
	public boolean modify(BoardVO vo);
	
	public boolean remove(Long board_number);
	
	
}
