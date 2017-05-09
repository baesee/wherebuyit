package com.lion.wherebuyit.service;

import java.util.List;

import com.lion.wherebuyit.domain.BoardVO;
import com.lion.wherebuyit.domain.UserVO;

public interface MainService {
	
	//회원 조회
	public List<UserVO> selectUserList() throws Exception;
	
	//메인 글 목록 조회
	public List<BoardVO> selectBoardList() throws Exception;

}
