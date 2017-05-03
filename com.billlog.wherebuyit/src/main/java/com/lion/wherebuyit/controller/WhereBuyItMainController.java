package com.lion.wherebuyit.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lion.wherebuyit.domain.UserVO;
import com.lion.wherebuyit.service.WhereBuyItMainService;

@Controller
public class WhereBuyItMainController {

	@Resource(name = "mainService")
	private WhereBuyItMainService mainService;
	
	@RequestMapping(value = "/main.do")
	public String whereBuyItMain(Model model) throws Exception {
		System.err.println(" COMIN IN : /main.do");
		
		List<UserVO> list_user = mainService.selectUserList(); 
		System.err.println("리스트_유저 사이즈 : " + list_user.size());
		
		model.addAttribute("list", list_user);
		
		return "main/whereBuyItMain";
	}
	
}
