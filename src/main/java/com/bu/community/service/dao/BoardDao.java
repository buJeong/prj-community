package com.bu.community.service.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.bu.community.service.vo.PostVo;

@Mapper
public interface BoardDao {

	List<PostVo> getPostList();

	PostVo getPostOne(int id);

	int addPost(Map<String, Object> info);

}
