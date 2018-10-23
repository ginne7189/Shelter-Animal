package com.animalshelter.board.dao;

import java.util.List;
import java.util.Map;

import com.animalshelter.board.model.MissingBoardDto;

public interface MissingBoardDao {
	int writeArticle(MissingBoardDto missingboardDto);
	void updateStep(MissingBoardDto missingboardDto);
	void replyArticle(MissingBoardDto missingboardDto);
	void updateReply(int pseq);//기존방식과 다른점
	List<MissingBoardDto> listArticle(Map<String, String> map);
	MissingBoardDto viewArticle(int seq);
	int modifyArticle(MissingBoardDto missingboardDto);
	void deleteArticle(int seq);
}
