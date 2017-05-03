package com.lion.wherebuyit.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lion.wherebuyit.domain.UserVO;
import com.lion.wherebuyit.service.WhereBuyItMainService;

@Service("mainService")
public class WhereBuyItMainServiceImpl implements WhereBuyItMainService{
	
	@Resource(name="mainDAO")
	public WhereBuyItMainDAO mainDAO;
	
	@Override
	public List<UserVO> selectUserList() throws Exception {
		return mainDAO.selectUserList();
	}
}
