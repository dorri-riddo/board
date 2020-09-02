package com.example.board.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.example.board.dto.BoardDto;
import com.example.board.mapper.BoardMapper;
import com.example.board.pagination.Pagination;

@Service("com.example.board.service.BoardService")
public class BoardService {

	@Resource(name="com.example.board.mapper.BoardMapper")
	BoardMapper boardMapper;
	
	public int selectBoardCnt() throws Exception {
		return boardMapper.selectBoardCnt();
	}
	
	public List<BoardDto> selectBoardList(Pagination pagination) throws Exception {
		return boardMapper.selectBoardList(pagination);
	}
	
	public BoardDto selectBoardDetail(int bno) throws Exception {
		return boardMapper.selectBoardDetail(bno);
	}
	
	public void insertBoard(BoardDto dto) throws Exception {
		boardMapper.insertBoard(dto);
	}
	
	public void updateBoard(BoardDto dto) throws Exception {
		boardMapper.updateBoard(dto);
	}
	
	public void deleteBoard(int bno) throws Exception {
		boardMapper.deleteBoard(bno);
	}
}
