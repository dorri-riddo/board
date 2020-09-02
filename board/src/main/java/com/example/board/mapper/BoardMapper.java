package com.example.board.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.board.dto.BoardDto;
import com.example.board.pagination.Pagination;

@Repository("com.example.board.mapper.BoardMapper")
public interface BoardMapper {
	public int selectBoardCnt() throws Exception;
	public List<BoardDto> selectBoardList(Pagination pagination) throws Exception;
	public BoardDto selectBoardDetail(int bno) throws Exception;
	public void insertBoard(BoardDto dto) throws Exception;
	public void updateBoard(BoardDto dto) throws Exception;
	public void deleteBoard(int bno) throws Exception;

}
