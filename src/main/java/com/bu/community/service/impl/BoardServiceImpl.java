package com.bu.community.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bu.community.service.BoardService;
import com.bu.community.service.dao.BoardDao;
import com.bu.community.service.vo.PostVo;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDao boardDao;
	@Override
	public List<PostVo> getBoardList() {
		return boardDao.getPostList();
	}
	@Override
	public PostVo getPostOne(int seq) {
		return boardDao.getPostOne(seq);
	}
	@Override
	public int addPost(Map<String, Object> info) {
		return boardDao.addPost(info);
	}
	@Override
	public int modifyPost(Map<String, Object> info) {
		return boardDao.modifyPost(info);
	}
	@Override
	public int deletePost(int seq) {
		return boardDao.deletePost(seq);
	}
	@Override
	public int getLastNo() {
		return boardDao.getLastNo();
	}
	@Override
	public void modifyPostNo(int seq) {
		boardDao.modifyPostNo(seq);
	}

}
