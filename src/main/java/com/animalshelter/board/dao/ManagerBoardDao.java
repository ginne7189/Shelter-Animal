package com.animalshelter.board.dao;

import java.util.List;
import java.util.Map;

import com.animalshelter.board.model.ManagerBoardDto;

public interface ManagerBoardDao {
	int writeArticle(ManagerBoardDto managerboardDto);
	void updateStep(ManagerBoardDto managerboardDto);
	void replyArticle(ManagerBoardDto managerboardDto);
	void updateReply(int pseq);//기존방식과 다른점
	List<ManagerBoardDto> listArticle(Map<String, String> map);
	ManagerBoardDto viewArticle(int seq);
	int modifyArticle(ManagerBoardDto managerboardDto);
	void deleteArticle(int seq);

}
