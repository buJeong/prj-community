package com.bu.community.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bu.community.service.MenuService;
import com.bu.community.service.dao.MenuDao;
import com.bu.community.service.vo.MenuVo;

@Service
public class MenuServiceImpl implements MenuService {
	
	@Autowired
	MenuDao menuDao;
	
	@Override
	public List<MenuVo> getTopMenu() {
		return menuDao.getTopMenu();
	}

}
