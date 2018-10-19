package com.animalshelter.board.dao;

import java.util.List;
import java.util.Map;

import com.animalshelter.board.model.DeclareBoardDto;

public interface DeclareBoardDao {
	int writeArticle(DeclareBoardDto declareboardDto);
	void updateStep(DeclareBoardDto declareboardDto);
	void replyArticle(DeclareBoardDto declareboardDto);
	void updateReply(int pseq);//기존방식과 다른점
	List<DeclareBoardDto> listArticle(Map<String, String> map);
	DeclareBoardDto viewArticle(int seq);
	int modifyArticle(DeclareBoardDto declareboardDto);
	void deleteArticle(int seq);
}
