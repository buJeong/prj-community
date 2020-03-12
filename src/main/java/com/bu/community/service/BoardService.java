package com.bu.community.service;

import java.util.List;
import java.util.Map;

import com.bu.community.service.vo.PostVo;

public interface BoardService {

	List<PostVo> getBoardList();

	PostVo getPostOne(int seq);

	int addPost(Map<String, Object> info);

	int modifyPost(Map<String, Object> info);

	int deletePost(int seq);

	int getLastNo();

	void modifyPostNo(int seq);

}
