package com.bu.community.service;

import java.util.List;
import java.util.Map;

import com.bu.community.service.vo.PostVo;

public interface BoardService {

	List<PostVo> getBoardList();

	PostVo getPostOne(int id);

	int addPost(Map<String, Object> info);

}
