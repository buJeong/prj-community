package com.bu.community.service.vo;

import java.util.Map;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PostVo {
	private int id;
	private String regDate;
	private String title;
	private String contents;
	private String writer;
	private int hit;
	private Map<String, Object> extra;
}
