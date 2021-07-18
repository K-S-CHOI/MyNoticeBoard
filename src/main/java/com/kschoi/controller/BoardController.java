package com.kschoi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kschoi.domain.BoardVO;
import com.kschoi.service.BoardService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/")
	public void mainHome() {
		log.info("호오오옴");
	}

	/* 게시판 글 조회하는 부분 */
	@GetMapping("/board")
	public String board(Model model) {
		List<BoardVO> list = boardService.load_page();
		model.addAttribute("boardList", list);
		
		return "/board/list";
	}
	
	/* 선택한 글 조회하는 부분 */
	@GetMapping("/board/{board_number}")
	public String read(@PathVariable("board_number") Long board_number, Model model) {
		model.addAttribute("board", boardService.read(board_number));
		return "/board/read";
	}
	
	/* 글 작성하는 부분 */
	@GetMapping("/board/write")
	public String write() {
		return "/board/write";
	}
	@PostMapping("/board/write")
	public String write(BoardVO vo) {
		boardService.write(vo);
		
		return "redirect:/board";
	}
	
	/* 글 삭제하는 부분 */
	@PostMapping("/board/remove")
	public String remove(Long board_number, RedirectAttributes rttr) {
		if(boardService.remove(board_number) == true) {
			rttr.addFlashAttribute("result", "success");
		} else {
			rttr.addFlashAttribute("result", "fail");
		}
		return "redirect:/board";
	}
	
	/* 글 수정하는 부분 */
	@GetMapping("/board/modify")
	public String update(Long board_number, Model model) {
		model.addAttribute("board", boardService.read(board_number));
		return "/board/modify";
	}
	@PostMapping("/board/modify")
	public String update(BoardVO vo, RedirectAttributes rttr) {
		if(boardService.modify(vo) == true) {
			rttr.addFlashAttribute("result", "success");
			log.info("ㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎ");
		} else {
			rttr.addFlashAttribute("result", "fail");
			log.info("ㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗ");
		}
		return "redirect:/board";
	}
	
}
