package com.animalshelter.board.dao;

import java.util.List;
import java.util.Map;

import com.animalshelter.board.model.ParcelBoardDto;

public interface ParcelBoardDao {
	int writeArticle(ParcelBoardDto parcelboardDto);
	void updateStep(ParcelBoardDto parcelboardDto);
	void replyArticle(ParcelBoardDto parcelboardDto);
	void updateReply(int pseq);//기존방식과 다른점
	List<ParcelBoardDto> listArticle(Map<String, String> map);
	ParcelBoardDto viewArticle(int seq);
	int modifyArticle(ParcelBoardDto parcelboardDto);
	void deleteArticle(int seq);
}
