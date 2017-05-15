package com.lion.wherebuyit.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lion.wherebuyit.domain.BoardVO;
import com.lion.wherebuyit.domain.FileVO;
import com.lion.wherebuyit.domain.UserVO;
import com.lion.wherebuyit.service.MainService;


@Service("mainService")
public class MainServiceImpl implements MainService {

	@Resource(name="mainDAO")
	public MainDAO mainDAO;
	
	@Override
	public List<UserVO> selectUserList() throws Exception {
		return mainDAO.selectUserList();
	}

	@Override
	public List<FileVO> selectBoardList() throws Exception {
		// TODO Auto-generated method stub
		return mainDAO.selectBoardList();
	}

	@Override
	public void insertBoard(FileVO vo) throws Exception {
		// TODO Auto-generated method stub
		mainDAO.insertBoard(vo);		
	}
	
}
