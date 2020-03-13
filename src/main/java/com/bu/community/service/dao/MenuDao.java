package com.bu.community.service.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bu.community.service.vo.MenuVo;

@Mapper
public interface MenuDao {

	List<MenuVo> getTopMenu();

}
