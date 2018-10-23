package com.animalshelter.board.dao;

import java.util.List;
import java.util.Map;

import com.animalshelter.board.model.DonationBoardDto;

public interface DonationBoardDao {
	int writeArticle(DonationBoardDto donationboardDto);
	void updateStep(DonationBoardDto donationboardDto);
	void replyArticle(DonationBoardDto donationboardDto);
	void updateReply(int pseq);//기존방식과 다른점
	List<DonationBoardDto> listArticle(Map<String, String> map);
	DonationBoardDto viewArticle(int seq);
	int modifyArticle(DonationBoardDto donationboardDto);
	void deleteArticle(int seq);
}
