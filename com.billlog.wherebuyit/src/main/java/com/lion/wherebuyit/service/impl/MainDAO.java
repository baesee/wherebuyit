package com.lion.wherebuyit.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lion.wherebuyit.domain.BoardVO;
import com.lion.wherebuyit.domain.UserVO;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("mainDAO")
public class MainDAO extends EgovAbstractDAO{

	@SuppressWarnings("unchecked")
	public List<UserVO> selectUserList() throws Exception {
		// TODO Auto-generated method stub
		return (List<UserVO>) list("WhereBuyItMain.selectUserList");
	}
	
	@SuppressWarnings("unchecked")
	public List<BoardVO> selectBoardList() throws Exception {
		// TODO Auto-generated method stub
		return (List<BoardVO>) list("BoardList");
	}

}
