package com.animalshelter.board.dao;

import java.util.List;
import java.util.Map;

import com.animalshelter.board.model.VolunteerBoardDto;

public interface VolunteerBoardDao {
	int writeArticle(VolunteerBoardDto volunteerboardDto);
	void updateStep(VolunteerBoardDto volunteerboardDto);
	void replyArticle(VolunteerBoardDto volunteerboardDto);
	void updateReply(int pseq);//기존방식과 다른점
	List<VolunteerBoardDto> listArticle(Map<String, String> map);
	VolunteerBoardDto viewArticle(int seq);
	int modifyArticle(VolunteerBoardDto volunteerboardDto);
	void deleteArticle(int seq);

}
