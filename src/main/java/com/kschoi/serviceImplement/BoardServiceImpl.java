package com.kschoi.serviceImplement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kschoi.domain.BoardVO;
import com.kschoi.mapper.BoardMapper;
import com.kschoi.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardMapper mapper;

	@Override
	public void write(BoardVO vo) {
		mapper.insert(vo);
	}

	@Override
	public BoardVO read(Long board_number) {
		BoardVO vo = mapper.read(board_number);
		return vo;
	}

	@Override
	public List<BoardVO> load_page() {
		List<BoardVO> list = mapper.getList();
		return list;
	}

	@Override
	public boolean modify(BoardVO vo) {
		return mapper.update(vo) == 1;
	}

	@Override
	public boolean remove(Long board_number) {
		return mapper.delete(board_number) == 1;
	}

}
