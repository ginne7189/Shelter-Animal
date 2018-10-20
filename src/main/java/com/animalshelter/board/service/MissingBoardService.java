package com.animalshelter.board.service;

import java.util.List;
import java.util.Map;

import com.animalshelter.board.model.MissingBoardDto;

public interface MissingBoardService {
	int writeArticle(MissingBoardDto missingboardDto);
	int replyArticle(MissingBoardDto missingboardDto);
	List<MissingBoardDto> listArticle(Map<String, String> map);
	MissingBoardDto viewArticle(int seq);
	MissingBoardDto getArticle(int seq);
	int modifyArticle(MissingBoardDto missingboardDto);
	void deleteArticle(int seq);

}
