package com.kschoi.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kschoi.domain.BoardVO;
import com.kschoi.mapper.BoardMapper;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.kschoi.config.RootConfig.class})
@Log4j

public class MapperTest {
	@Autowired
	private BoardMapper mapper;
	

	public void doit() {
		BoardVO vo = new BoardVO();
		vo.setTitle("한글 테스트 제목");
		vo.setContent("한글 내용 들어감 ");
		vo.setWriter("user01");
		
		mapper.insert(vo);
		
		log.info(vo);
	}
	
	@Test
	public void delete() {
		log.info("DELETE : " + mapper.delete(324L));
	}
	

	public void read() {
		mapper.read(324L);
	}
}
