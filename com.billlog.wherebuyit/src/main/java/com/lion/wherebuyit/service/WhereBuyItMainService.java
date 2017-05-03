package com.lion.wherebuyit.service;

import java.util.List;

import com.lion.wherebuyit.domain.UserVO;

public interface WhereBuyItMainService {
	//회원 조회
	public List<UserVO> selectUserList() throws Exception;
}
