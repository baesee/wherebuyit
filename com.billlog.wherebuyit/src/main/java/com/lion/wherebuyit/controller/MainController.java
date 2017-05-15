package com.lion.wherebuyit.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lion.wherebuyit.domain.BoardVO;
import com.lion.wherebuyit.domain.FileVO;
import com.lion.wherebuyit.domain.UserVO;
import com.lion.wherebuyit.service.MainService;

@Controller
public class MainController {

	@Resource(name = "mainService")
	private MainService mainService;
	
	/***
	 * 메인 게시글 목록 조회
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/main.do")
	public String whereBuyItMain(Model model) throws Exception {
		System.err.println(" COMIN IN : /main.do");
		
		List<UserVO> list_user = mainService.selectUserList(); 
		System.err.println("리스트_유저 사이즈 : " + list_user.size());
		
		List<FileVO> list_board = mainService.selectBoardList(); 
		System.err.println("리스트_Board 사이즈 : " + list_board.size());
		for( int i = 0 ; i < list_board.size() ; i++){
			System.err.println("getStoredFileName("+i+") : " + list_board.get(i).getStoredFileName());
		}
		
		
		model.addAttribute("UserLists", list_user);
		model.addAttribute("BoardLists", list_board);
		
		return "main/main";
	}
	
	/***
	 * 글 닥성
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/post.do")
	public String writeForm(Model model) throws Exception {
		System.err.println("COME IN /post.do");
		return "main/write";
	}
	
	/***
	 * 파일업로드
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	@RequestMapping(value = "/upload.do")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.err.println("COME IN /upload.do");
	}

	
}
