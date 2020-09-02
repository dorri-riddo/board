package com.example.board.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.board.dto.BoardDto;
import com.example.board.pagination.Pagination;
import com.example.board.service.BoardService;

@Controller
public class BoardController {
	
	@Resource(name="com.example.board.service.BoardService")
	BoardService boardService;
		
	@RequestMapping("/list")
	private String selectBoardList(Model model, @RequestParam(required=false, defaultValue="1") int page,
			@RequestParam(required = false, defaultValue = "1") int range) throws Exception {
		int cnt = boardService.selectBoardCnt();
		
		Pagination pagination = new Pagination();
		pagination.pageInfo(page, range, cnt);
		
		model.addAttribute("pagination", pagination);
		model.addAttribute("list", boardService.selectBoardList(pagination));
		
		return "list";
	}
	
	@RequestMapping("/write")
	private String writeBoard() throws Exception {
		
		return "write";
	}
	
	@RequestMapping("/insertBoard")
	private String insertBoard(HttpServletRequest request) throws Exception {
		BoardDto dto = new BoardDto();
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		dto.setWriter(request.getParameter("writer"));
				
		boardService.insertBoard(dto);
		
		return "redirect:/list";
	}
	
	@RequestMapping("/detail/{bno}")
	private String selectBoardDetail(@PathVariable int bno, Model model) throws Exception {
		model.addAttribute("detail", boardService.selectBoardDetail(bno));
		
		return "detail";
	}
	
	@RequestMapping("/update/{bno}")
	private String updateBoard(@PathVariable int bno, Model model) throws Exception {
		model.addAttribute("detail", boardService.selectBoardDetail(bno));
		
		return "update";
	}
	
	@RequestMapping("/updateBoard/{bno}")
	private String updateBoard(@PathVariable int bno, HttpServletRequest request) throws Exception {
		BoardDto dto = new BoardDto();
		
		dto.setBno(bno);
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));		
		
		boardService.updateBoard(dto);
		
		return "redirect:/detail/" + bno;
	}
	
	
	@RequestMapping("/delete/{bno}")
	private String deleteBoard(@PathVariable int bno, HttpServletRequest request) throws Exception {
		boardService.deleteBoard(bno);
		
		return "redirect:/list";
	}
}
