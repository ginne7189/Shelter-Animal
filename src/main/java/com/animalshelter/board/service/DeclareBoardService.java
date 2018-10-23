package com.animalshelter.board.service;

import java.util.List;
import java.util.Map;

import com.animalshelter.board.model.DeclareBoardDto;

public interface DeclareBoardService {
	int writeArticle(DeclareBoardDto declareboardDto);
	int replyArticle(DeclareBoardDto declareboardDto);
	List<DeclareBoardDto> listArticle(Map<String, String> map);
	DeclareBoardDto viewArticle(int seq);
	DeclareBoardDto getArticle(int seq);
	int modifyArticle(DeclareBoardDto declareboardDto);
	void deleteArticle(int seq);
}
