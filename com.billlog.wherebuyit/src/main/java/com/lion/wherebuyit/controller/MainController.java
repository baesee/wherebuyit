package com.lion.wherebuyit.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lion.wherebuyit.domain.BoardVO;
import com.lion.wherebuyit.domain.UserVO;
import com.lion.wherebuyit.service.MainService;

@Controller
public class MainController {

	@Resource(name = "mainService")
	private MainService mainService;
	
	@RequestMapping(value = "/main.do")
	public String whereBuyItMain(Model model) throws Exception {
		System.err.println(" COMIN IN : /main.do");
		
		List<UserVO> list_user = mainService.selectUserList(); 
		System.err.println("리스트_유저 사이즈 : " + list_user.size());
		
		List<BoardVO> list_board = mainService.selectBoardList(); 
		System.err.println("리스트_게시글 사이즈 : " + list_board.size());
		
		model.addAttribute("UserLists", list_user);
		model.addAttribute("BoardLists", list_board);
		
		return "main/main";
	}
	
	@RequestMapping(value = "/post")
	public String writeForm(Model model) throws Exception {
				
		return "main/boardWrite";
	}
	
}