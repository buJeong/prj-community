package com.bu.community.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bu.community.service.BoardService;
import com.bu.community.service.vo.PostVo;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	@RequestMapping(value = "/boardlist")
	public String showPostList(Model model) {
		List<PostVo> postList = boardService.getBoardList();
		model.addAttribute("postList", postList);
		return "board/list";
	}
	
	@RequestMapping(value = "/detail")
	public String showPostOne(@RequestParam int seq, Model model) {
		PostVo postOne = boardService.getPostOne(seq);
		model.addAttribute("postOne", postOne);
		return "board/detail";
	}
	
	@RequestMapping(value = "/add")
	public String goAddPostPage() {
		return "board/add";
	}
	
	@RequestMapping(value = "/doAdd")
	public String doAddPost(@RequestParam Map<String, Object> info, HttpServletRequest request, HttpServletResponse response) throws IOException {
		String url = "";
		int nextAddNo = boardService.getLastNo() + 1;
		info.put("no", nextAddNo);
		int rsNum = boardService.addPost(info);
		if (rsNum == 0) {
			url = "redirect:/";
		} else if (rsNum == 1) {
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('등록'); location.href = '/boardlist';</script>");
            out.flush();
		}
		return url;
	}
	
	@RequestMapping(value = "/modify")
	public String goModifyPostPage(@RequestParam int seq, Model model) {
		PostVo postOne = boardService.getPostOne(seq);
		model.addAttribute("postOne", postOne);
		return "board/modify";
	}
	
	@RequestMapping(value = "/doModify")
	public String doModifyPost(@RequestParam Map<String, Object> info, HttpServletRequest request, HttpServletResponse response) throws IOException {
		String url = "";
		int rsNum = boardService.modifyPost(info);
		if (rsNum == 0) {
			url = "redirect:/";
		} else if (rsNum == 1) {
			response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('수정'); location.href = '/detail?seq=" + info.get("seq")  + "';</script>");
            out.flush();
		}
		return url;
	}
	
	@RequestMapping(value = "/delete")
	public String doDeletePost(@RequestParam int seq,  HttpServletRequest request, HttpServletResponse response) throws IOException {
		String url = "";
		boardService.modifyPostNo(seq);
		boardService.deletePost(seq);
		response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<script>alert('삭제'); location.href = '/boardlist';</script>");
        out.flush();

		return url;
	}
}
