package com.animalshelter.board.service;

import java.util.List;
import java.util.Map;

import com.animalshelter.board.model.ManagerBoardDto;
//
public interface ManagerBoardService {
	int writeArticle(ManagerBoardDto managerboardDto);
	int replyArticle(ManagerBoardDto managerboardDto);
	List<ManagerBoardDto> listArticle(Map<String, String> map);
	ManagerBoardDto viewArticle(int seq);
	ManagerBoardDto getArticle(int seq);
	int modifyArticle(ManagerBoardDto managerboardDto);
	void deleteArticle(int seq);
}